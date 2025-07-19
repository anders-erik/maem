
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

export const sql_files = {
  "schema": "./db/sql/schema.sql",
  "data": "./db/sql/data.sql",
  "drop_tables": "./db/sql/drop_tables.sql",
};

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
      sql_source = await fs.readFile(sql_files.drop_tables, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql drop file: "${sql_files.drop_tables}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database dropped successfully');
    } catch (error) {
      console.log(`Failed to run sql drop: "${sql_files.drop_tables}": ${error}`);
      process.exit(1);
    }

    console.log('delete_maem() done')
  }

  static async create_maem(): Promise<void>
  {
    var sql_source = "";
    try {
      sql_source = await fs.readFile(sql_files.schema, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql schema: "${sql_files.schema}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database created successfully');
    } catch (error) {
      console.log(`Failed to run sql schema: "${sql_files.schema}": ${error}`);
      process.exit(1);
    }

    console.log('create_maem() done')
  }


  static async populate_maem(): Promise<void>
  {
    var sql_source = "";
    try {
      sql_source = await fs.readFile(sql_files.data, 'utf-8');
    } catch (error) {
      console.log(`Failed to read sql schema: "${sql_files.schema}": ${error}`);
      process.exit(1);
    }

    try {
      await pool.query(sql_source);
      console.log('maem database created successfully');
    } catch (error) {
      console.log(`Failed to run sql schema: "${sql_files.schema}": ${error}`);
      process.exit(1);
    }

    console.log('populate_maem() done')
  }


}


(async () => {
  await MaemDBStatic.reload_from_sql_files();
  process.exit(0);
})();
