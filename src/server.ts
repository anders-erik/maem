import express from 'express';
import { query } from '../db';
import path from 'path';

import type { SpeciesRow, CommonNameRow, ImageRow, NameToTest } from '../shared/types';

const app = express();
const PORT = process.env.PORT || 3000;
const root_path = process.cwd();

app.use(express.json());




app.get('/rand-img', async (req, res) =>
{
  console.log("/rand-img");

  console.log("10");

  try {
    const speciesResult = await query('SELECT * FROM species');
    if(speciesResult === null || speciesResult.rowCount === null)
    {
      res.status(500).json({ error: 'Failed to query species' });
      return;
    }
    const species: SpeciesRow[] = speciesResult.rows;
    const rand_species_index = Math.floor(Math.random()*speciesResult.rowCount);
    const animal = species[rand_species_index];
    
    const common_name_query = await query(`SELECT * FROM common_names WHERE species_col_id = \'${animal.col_id}\'`);
    if(common_name_query === null || common_name_query.rowCount === null)
    {
      res.status(500).json({ error: 'Failed to query common names' });
      return;
    }
    const common_names: CommonNameRow[] = common_name_query.rows.filter((n: CommonNameRow) => n.species_col_id === animal.col_id)
    // if last_idx+1 -> latin
    const name_to_test_idx = Math.floor(Math.random()*(common_name_query.rowCount+1));
    var name_to_test: NameToTest;
    if(name_to_test_idx === common_names.length)
    {
      name_to_test = {
        "language": "latin",
        "name": animal.latin_name
      };
    }
    else
    {
      name_to_test = {
        "language": common_names[name_to_test_idx].language,
        "name": common_names[name_to_test_idx].name
      };
    }
      
    const common_name = common_names[Math.floor(Math.random()*common_name_query.rowCount)];

    const images_row_query = await query(`SELECT * FROM images WHERE species_col_id = '${animal.col_id}'`);
    if(images_row_query === null || images_row_query.rowCount === null)
    {
      res.status(500).json({ error: 'Failed to query image rows' });
      return;
    }
    const image_rows: CommonNameRow[] = images_row_query.rows;
    const rand_image_row = image_rows[Math.floor(Math.random()*images_row_query.rowCount)];
    // const images: ImageRow[] = imagesResult.rows;

    const data = {
      "animal": animal,
      "name_to_test": name_to_test,
      "image": rand_image_row,
    };
    // const data = {"Query": `SELECT * FROM common_names WHERE species_col_id IS '${animal.col_id}'`};
    // const data = {"Query": 'SELECT * FROM common_names WHERE species_col_id IS'};

    res.json(data);
  
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch species' });
  }
});


// GET /species - list all species with their latin name and available common names
app.get('/species', async (req, res) =>
{
  console.log("/species");

  try {
    const speciesResult = await query('SELECT * FROM species');
    const species: SpeciesRow[] = speciesResult.rows;
    
    const namesResult = await query('SELECT * FROM common_names');
    const names: CommonNameRow[] = namesResult.rows;

    const imagesResult = await query('SELECT id, species_col_id, path FROM images');
    const images: ImageRow[] = imagesResult.rows;


    const data = species.map((s: SpeciesRow) => ({
      id: s.id,
      col_id: s.col_id,
      latinName: s.latin_name,
      commonNames: names.filter((n: CommonNameRow) => n.species_col_id === s.col_id)
                        .map((n: CommonNameRow) => ({ language: n.language, name: n.name })),
      images: images.filter((img: ImageRow) => img.species_col_id === s.col_id)
                    .map((img: ImageRow) => ({uuid: img.id, path: img.path}))
    }));
    res.json(data);
  
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch species' });
  }
});


// GET /image/:imageUuid - serve image file by UUID
app.get('/image/:imageUuid', async (req, res) => 
{
  console.log("/image");

  try {
    const { imageUuid } = req.params;

    const result = await query('SELECT path FROM images WHERE id = $1', [imageUuid]);
    if (result === null || result.rowCount === null || result.rowCount === 0) 
      return res.status(404).json({ error: 'Image not found' });

    const imagePath = root_path + "/" + result.rows[0].path;

    res.sendFile(imagePath);
  
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch image' });
  }
});

// GET /image/all - list all image entries
app.get('/image/all', async (req, res) => {
  try {
    const result = await query('SELECT * FROM images');
    res.setHeader("Content-Type", "image/png");
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: 'Failed to fetch images' });
  }
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
