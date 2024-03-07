import React, { useState, useEffect } from 'react';

const Podium = ({ idEpreuve }) => {
    const [podiumData, setPodiumData] = useState([]);

    useEffect(() => {
        const fetchPodiumData = async () => {
            try {
                const response = await fetch(`http://localhost:3000/api/podium/${idEpreuve}`);
                const data = await response.json();
                setPodiumData(data);
            } catch (error) {
                console.error("Erreur lors de la récupération des données du podium :", error);
            }
        };

        if (idEpreuve) {
            fetchPodiumData();
        }
    }, [idEpreuve]);

    useEffect(() => {
        console.log(podiumData); 
    }, [podiumData]);

    if (!podiumData || podiumData.length === 0) {
        return null; 
    }

    return (
        <div className="mt-4 bg-white rounded-lg shadow overflow-hidden">
            <div className="px-4 py-2 bg-gray-800 text-white text-lg font-semibold">
                Podium
            </div>
            <ul className="divide-y divide-gray-200">
                {podiumData.map((athlete, index) => (
                    <li key={index} className="px-4 py-2 flex justify-between items-center">
                        <span>{index + 1}. {athlete.nom} {athlete.prenom}</span>
                        <span className={`badge ${athlete.medaille}`}>
                            {athlete.medaille}
                        </span>
                    </li>
                ))}
            </ul>
        </div>
    );
};

export default Podium;
