
export type SpeciesRow = { 
  id: number; 
  col_id: string; 
  latin_name: string
};


export type CommonNameRow = {
  id: number; 
  species_col_id: string; 
  language: string; 
  name: string
};

export type NameToTest = {
  language: string;
  name: string;
}

export type ImageRow = {
  id: string; 
  species_col_id: string;
  path: string
};

export interface RandSpecies
{
    animal: SpeciesRow;
    name_to_test: NameToTest;
    image: ImageRow;
}

