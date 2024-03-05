import React, { useState, useEffect } from 'react';
import './App.css';

function App() {
  const [data, setData] = useState([]);

  useEffect(() => {
    fetchData();
  }, []);

  const fetchData = async () => {
    try {
      const response = await fetch('/api/data');
      const jsonData = await response.json();
      setData(jsonData);
    } catch (error) {
      console.error('Erreur lors de la récupération des données : ', error);
    }
  };

  return (
    <div className="App">
      <h1>Données de la base de données MySQL</h1>
      <ul>
        {data.map((item, index) => (
          <li key={index}>{item.nom_colonne}: {item.valeur_colonne}</li>
        ))}
      </ul>
    </div>
  );
}

export default App;