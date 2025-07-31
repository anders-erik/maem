import { useState, useEffect } from "react";


import type { RandSpecies } from '../../shared/types'
import './Flashcard.css'



function Flashcard({ data }: { data: RandSpecies })
{
  const [visible, setVisible] = useState(false);

  useEffect(() =>
  {
    const handleKeyDown = (event: KeyboardEvent) =>
    {
      // event.code === "Enter" || event.code === "NumpadEnter"
      // console.log("Key pressed:", event.code);

      if (event.code === "Space" || event.key === "Enter")
      { 
        if(!visible)
          setVisible((v) => !v);
        else
          window.self.location.reload();
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [visible]);


  // return <div>Data: {JSON.stringify(data)}</div>;
  return (
    <div className="flashcard-container" id="flashcard-container">
      <h2>Penguin Name Test</h2>
      <p>Language: {data.name_to_test.language}</p>
      <img src={`/api/image/${data.image.id}`} alt={data.name_to_test.name} className="flashcard-image" />
      {/* <p>Name To Test: {data.name_to_test.name}</p> */}
      <div style={{ border: "1px solid gray", padding: 10 }}>
      {visible ? data.name_to_test.name : "..."}
      </div>
    </div>
  );
}

export default Flashcard;
