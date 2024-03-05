import React, { useState, useEffect } from 'react';

function Sports() {
    const [sports, setSports] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchSports = async () => {
            try {
                const response = await fetch('/api/sports', {
                    method: 'GET'
                });
                if (!response.ok) {
                    throw new Error('Erreur lors de la récupération des sports');
                }
                const data = await response.json();
                setSports(data);
                setLoading(false);
            } catch (error) {
                console.error('Erreur lors de la récupération des sports : ', error);
            }
        };

        fetchSports();
    }, []);

    return (
        <div>
            <h1>Liste des sports</h1>
            {loading ? (
                <p>Chargement en cours...</p>
            ) : (
                <ul>
                    {sports.map(sport => (
                        <li key={sport.id}>{sport.nom}</li>
                    ))}
                </ul>
            )}
        </div>
    );
}

export default Sports;