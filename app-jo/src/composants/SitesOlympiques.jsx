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

    // Créer une structure de données pour stocker les sports par site olympique
    const sportsParSite = {};
    sitesOlympiques.forEach(site => {
        if (!sportsParSite[site.site_olympique]) {
            sportsParSite[site.site_olympique] = [];
        }
        sportsParSite[site.site_olympique].push({ name: site.name_sport, image: site.img_sport });
    });

    return (
        <div className="container mx-auto">
            <h1 className="text-2xl md:text-3xl pl-2 my-2 border-l-4 mt-10 mb-10 font-sans font-bold border-yellow-400 dark:text-gray-500">Sites Olympiques</h1>
            {loading ? (
                <p>Chargement en cours...</p>
            ) : (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                    {Object.entries(sportsParSite).map(([site, sports]) => (
                        <div key={site} className="border rounded-lg p-4 bg-white shadow-md">
                            <iframe className="w-full h-40 mb-4 object-cover rounded-lg" src={site} title="Site Olympique"></iframe>
                            <ul className="list-disc pl-4 overflow-y-auto scrollbar-thin scrollbar-thumb-gray-300 scrollbar-track-gray-100" style={{ maxHeight: '200px' }}>
                                {sports.map((sport, index) => (
                                    <li key={index} className="flex items-center mb-2">
                                        <img src={sport.image} alt={sport.name} className="w-20 h-30 mr-2" />
                                        {sport.name}
                                    </li>
                                ))}
                            </ul>
                        </div>
                    ))}
                </div>
            )}
        </div>
    );
}

export default SitesOlympiques;