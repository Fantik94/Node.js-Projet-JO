import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';

function Sports() {
    const [sports, setSports] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchSports = async () => {
            try {
                const response = await fetch('http://localhost:3000/api/sports', {
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

    const handleDelete = async (id) => {
        try {
            const response = await fetch(`http://localhost:3000/api/sports/${id}`, {
                method: 'DELETE'
            });
            if (!response.ok) {
                throw new Error('Erreur lors de la suppression du sport');
            }
            setSports(sports.filter(sport => sport.id !== id));
        } catch (error) {
            console.error('Erreur lors de la suppression du sport : ', error);
        }
    };

    return (
        <div className="container mx-auto px-4">
            <div className="flex justify-center mt-10">
                <Link to="/admin" className="mx-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Retour</Link>
                <Link to="/admin" className="mx-4 px-4 py-2 bg-green-500 text-white rounded-lg hover:bg-green-600">Ajouter un sport</Link>
            </div>
            <h1 className="text-4xl font-bold text-gray-800 text-center my-10">Liste des sports</h1>
            {loading ? (
                <p>Chargement en cours...</p>
            ) : (
                <div className="grid gap-4 my-10">
                    <table className="min-w-full divide-y divide-gray-200">
                        <thead className="bg-gray-50">
                            <tr>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Image</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Id du Sport</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nom du sport</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Modifier</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Supprimer</th>
                            </tr>
                        </thead>
                        <tbody className="bg-white divide-y divide-gray-200">
                            {sports.map(sport => (
                                <tr key={sport.id}>
                                    <td className="px-6 py-4 whitespace-nowrap">
                                        <img className="h-12 w-12" src={sport.img_sport} alt={`${sport.id}`} />
                                    </td>
                                    <td className="px-6 py-4 whitespace-nowrap">{sport.id}</td>
                                    <td className="px-6 py-4 whitespace-nowrap">{sport.name_sport}</td>
                                    <td className="px-6 py-4 whitespace-nowrap">
                                        <Link to={`/modifierCarousel/${sport.id}`} className="text-indigo-600 hover:text-indigo-900">Modifier</Link>
                                    </td>
                                    <td className="px-6 py-4 whitespace-nowrap">
                                        <button onClick={() => handleDelete(sport.id)} className="text-red-600 hover:text-red-900">Supprimer</button>
                                    </td>
                                </tr>
                            ))}
                        </tbody>
                    </table>
                </div>
            )}
        </div>
    );
}

export default Sports;
