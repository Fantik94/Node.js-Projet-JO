import React, { useState, useEffect } from 'react';

function App() {
  // État pour stocker les données des sports
  const [sports, setSports] = useState([]);

  // Fonction pour charger les données des sports depuis l'API
  const fetchSportsData = async () => {
    try {
      const response = await fetch('http://localhost:3000/api/data');
      console.log(response);
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      const data = await response.json();
      setSports(data);
    } catch (error) {
      console.error("Could not fetch the sports data: ", error);
    }
  };

  // Charger les données des sports au démarrage du composant
  useEffect(() => {
    fetchSportsData();
  }, []); // Le tableau vide indique que l'effet ne dépend d'aucune variable d'état et ne s'exécute qu'une fois

  // Rendu des données des sports
  return (
    <div>
      <h1>Sports</h1>
      <ul>
        {sports.map(sport => (
          <li key={sport.id}>{sport.sports}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;
