import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './composants/Navbar';
import './App.css'
import Home from './composants/Home';
import Sports from './composants/Sports';
import Epreuves from './composants/Epreuves';
import Connexion from './composants/Connexion';
import SitesOlympiques from './composants/SitesOlympiques';
//coucou damien

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
          <Route path="/login" element={<Connexion />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
