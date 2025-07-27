
import process from 'node:process';
import { promises as fs } from 'fs';

import { cat_or_die } from './cat';

import { Pool } from 'pg';
const pool = new Pool({
  connectionString: process.env.DATABASE_URL || 'postgres://postgres:devpswd@localhost:5432/maem',
});


type Species = {
  id: number;
  name_latin: string;
};

function get_species(): Species {
  return {
    id: 1,
    name_latin: "What is a penguin?",
  };
}

const sql_dir = './db/sql/';

export const sql_file_names: Record<string, string> = {
  "schema":       sql_dir + "schema.sql",
  "data":         sql_dir + "data.sql",
  "drop_tables":  sql_dir + "drop_tables.sql",
};

var sql_sources: Record<string, string> = {};

async function load_sql_files()
{
  for (const [key, value] of Object.entries(sql_file_names)) 
  {
    try
    {
      sql_sources[key] = await fs.readFile(value, 'utf-8');
    }
    catch (error)
    {
      console.log(`Failed to read sql file: "${sql_file_names.drop_tables}": ${error}`);
      process.exit(1);
    }
  }

  // console.log(`Loaded SQL files: ${Object.keys(sql_source_map).join(', ')}`);
  // console.log(sql_sources.drop_tables);
}
load_sql_files().catch((error) => {
  console.error(`Error loading SQL files: ${error}`);
  process.exit(1);
});

class MaemDBStatic 
{
  static async reload_from_sql_files(): Promise<void>
  {
    await this.delete_maem();
    await this.create_maem();
    await this.populate_maem();
  }

  static async delete_maem(): Promise<void>
  {
    var sql_source = "";
    try {
      sql_source = await fs.readFile(sql_file_names.drop_tables, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql drop file: "${sql_file_names.drop_tables}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database dropped successfully');
    } catch (error) {
      console.log(`Failed to run sql drop: "${sql_file_names.drop_tables}": ${error}`);
      process.exit(1);
    }

    console.log('delete_maem() done')
  }

  static async create_maem(): Promise<void>
  {
    var sql_source = "";
    try {
      sql_source = await fs.readFile(sql_file_names.schema, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql schema: "${sql_file_names.schema}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database created successfully');
    } catch (error) {
      console.log(`Failed to run sql schema: "${sql_file_names.schema}": ${error}`);
      process.exit(1);
    }

    console.log('create_maem() done')
  }


  static async populate_maem(): Promise<void>
  {
    var sql_source = "";
    try {
      sql_source = await fs.readFile(sql_file_names.data, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql schema: "${sql_file_names.schema}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database created successfully');
    } catch (error) {
      console.log(`Failed to run sql schema: "${sql_file_names.schema}": ${error}`);
      process.exit(1);
    }

    console.log('populate_maem() done')
  }


}


(async () => {
  await MaemDBStatic.reload_from_sql_files();
  process.exit(0);
})();
