import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './composants/Navbar';
import './App.css'
import Home from './composants/Home';
import Epreuves from './composants/Epreuves';

const Sports = () => <div>Sports Page</div>;
const SitesOlympiques = () => <div>Sites Olympiques Page</div>;
const Connexion = () => <div>Connexion Page</div>;

function App() {
  return (
    <Router>
      <div>
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/sports" element={<Sports />} />
          <Route path="/epreuves" element={<Epreuves />} />
          <Route path="/sites" element={<SitesOlympiques />} />
          <Route path="/connexion" element={<Connexion />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
