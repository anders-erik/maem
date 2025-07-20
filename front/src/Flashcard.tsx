import { useState, useEffect } from "react";
// import { useState } from 'react'
import './Flashcard.css'

// import types 
import type { RandSpecies } from '../../shared/types'



function Flashcard({ data }: { data: RandSpecies })
{
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const handleKeyDown = (event: KeyboardEvent) => {
      if (event.code === "Space") {
        setVisible((v) => !v);
      }
      // console.log("Key pressed:", event.code);
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, []);


  // return <div>Data: {JSON.stringify(data)}</div>;
  return (
    <div className="rand-img-container">
      <h2>Penguin Name Test</h2>
      <p>Language: {data.name_to_test.language}</p>
      <img src={`/api/image/${data.image.id}`} alt={data.name_to_test.name} className="rand-img" />
      {/* <p>Name To Test: {data.name_to_test.name}</p> */}
      <div style={{ border: "1px solid gray", padding: 10 }}>
      {visible ? data.name_to_test.name : "..."}
      </div>
    </div>
  );
}

export default Flashcard;
