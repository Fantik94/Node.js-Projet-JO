import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './composants/Navbar';
import './App.css'
import Home from './composants/Home';
import Sports from './composants/Sports';
import Epreuves from './composants/Epreuves';
import Connexion from './composants/Connexion';
import SitesOlympiques from './composants/SitesOlympiques';
import PrivateRoute from './composants/context/PrivateRoute';
import Admin from './composants/backoffice/Admin';
import AdminSports from './composants/backoffice/Sports';
import AdminEpreuves from './composants/backoffice/Epreuves';
import Single from './composants/Single';


function App() {
  return (
    <Router>
    <div>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/sports" element={<Sports />} />
        <Route path="/sports/:id" element={<Single/>} />
        <Route path="/epreuves" element={<Epreuves />} />
        <Route path="/sites" element={<SitesOlympiques />} />
        <Route path="/login" element={<Connexion />} />
        <Route element={<PrivateRoute />}>
          <Route path="/admin" element={<Admin />} />
          <Route path="/admin/sports" element={<AdminSports />} />
          <Route path="/admin/epreuves" element={<AdminEpreuves />} />
        </Route>
      </Routes>
    </div>
  </Router>
  );
}

export default App;
