import { useState, useEffect } from "react";
// import { useState } from 'react'
import './RandImg.css'

// import types 
import type { RandSpecies } from '../../shared/types'

import Flashcard from './Flashcard'


function EmptyComponent() {
  return <div>No data found or fetch failed.</div>;
}

function RandImg()
{
  const [data, setData] = useState<RandSpecies | null>(null);
  const [error, setError] = useState<Error | null>(null);
  const [loading, setLoading] = useState(true);


  
  console.log("RandImg.tsx");


  const url = "/api/rand-img";
  const opt = {
      method: 'GET'
  };

  // fetch from url and 

  useEffect(() => {
    fetch(url, opt)
      .then((response) => {
        if (!response.ok) {
          throw new Error("Fetch failed");
        }
        return response.json();
      })
      .then((data) => {
        setData(data);
        setError(null);
      })
      .catch((err) => {
        setError(err);
        setData(null);
      })
      .finally(() => {
        setLoading(false);
      });
  }, []);

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error || !data) {
    return <EmptyComponent />; // Show this if fetch fails
  }

  return <Flashcard data={data} />; // Show this if fetch succeeds
}


export default RandImg
