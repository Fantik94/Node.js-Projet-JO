import React, { useState, useEffect } from 'react';

function SitesOlympiques() {
    const [sitesOlympiques, setSitesOlympiques] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchSitesOlympiques = async () => {
            try {
                const response = await fetch('http://localhost:3000/api/sports/', {
                    method: 'GET'
                });
                if (!response.ok) {
                    throw new Error('Erreur lors de la récupération des sites olympiques');
                }
                const data = await response.json();
                setSitesOlympiques(data);
                setLoading(false);
            } catch (error) {
                console.error('Erreur lors de la récupération des sites olympiques : ', error);
            }
        };

        fetchSitesOlympiques();
    }, []);

    return (
        <div>
            <h1>Sites Olympiques</h1>
            {loading ? (
                <p>Chargement en cours...</p>
            ) : (
                <ul>
                    {sitesOlympiques.map(site => (
                        <div key={site.id}>
                            <strong>Sport:</strong> {site.name_sport}
                            <strong>Site olympique:</strong> {site.site_olympique}
                        </div>
                    ))}
                </ul>
            )}
        </div>
    );
}

export default SitesOlympiques;