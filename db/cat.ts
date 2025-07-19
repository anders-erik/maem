
// Input: file path
// return: constents as string

import { promises as fs } from 'fs';

/**
 * Reads the contents of a file at the given path and returns it as a string.
 * @param path - The file system path to the file.
 * @returns The file contents as a string.
 * @throws If the file cannot be read.
 */
export async function cat_or_die(path: string): Promise<string> {
  try {
    return await fs.readFile(path, 'utf-8');
  } catch (error) {
    console.log(`Failed to read sql schema: "${path}": ${error}`);
    process.exit(1);
  }
}