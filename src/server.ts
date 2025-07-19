import express from 'express';
import { query } from '../db';
import path from 'path';

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

// GET /species - list all species with their latin name and available common names
app.get('/species', async (req, res) => {
  try {
    type SpeciesRow = { id: number; latin_name: string };
    type CommonNameRow = { id: number; species_id: number; language: string; name: string };
    type ImageRow = { id: string; species_id: number };

    const speciesResult = await query('SELECT * FROM species');
    const species: SpeciesRow[] = speciesResult.rows;
    const namesResult = await query('SELECT * FROM common_names');
    const names: CommonNameRow[] = namesResult.rows;
    const imagesResult = await query('SELECT id, species_id FROM images');
    const images: ImageRow[] = imagesResult.rows;

    const data = species.map((s: SpeciesRow) => ({
      id: s.id,
      latinName: s.latin_name,
      commonNames: names.filter((n: CommonNameRow) => n.species_id === s.id).map((n: CommonNameRow) => ({ language: n.language, name: n.name })),
      images: images.filter((img: ImageRow) => img.species_id === s.id).map((img: ImageRow) => img.id)
    }));
    res.json(data);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch species' });
  }
});

// GET /image/:imageUuid - serve image file by UUID
app.get('/image/:imageUuid', async (req, res) => {
  try {
    const { imageUuid } = req.params;
    const result = await query('SELECT image_path FROM images WHERE id = $1', [imageUuid]);
    if (result.rowCount === 0) return res.status(404).json({ error: 'Image not found' });
    const imagePath = result.rows[0].image_path;
    res.sendFile(path.resolve(imagePath));
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch image' });
  }
});

// GET /image/all - list all image entries
app.get('/image/all', async (req, res) => {
  try {
    const result = await query('SELECT * FROM images');
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch images' });
  }
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
