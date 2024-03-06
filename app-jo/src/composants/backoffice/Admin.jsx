import React, { useState, useEffect } from 'react';

const Admin = () => {
    const [sports, setSports] = useState([]);
    const [epreuves, setEpreuves] = useState([]);

    useEffect(() => {
    }, []);

    const handleAddOrUpdateSport = () => {
    };

    const handleAddOrUpdateEpreuve = () => {
    };

    const handleDeleteSport = (sportId) => {
    };

    const handleDeleteEpreuve = (epreuveId) => {
    };

    return (
        <div>
            <h2>Dashboard Admin</h2>
            <div>
                <h3>Gestion des Sports</h3>
                <button onClick={handleAddOrUpdateSport}>Ajouter/Modifier un Sport</button>
            </div>
            <div>
                <h3>Gestion des Épreuves</h3>
                <button onClick={handleAddOrUpdateEpreuve}>Ajouter/Modifier une Épreuve</button>
            </div>
        </div>
    );
};

export default Admin;
