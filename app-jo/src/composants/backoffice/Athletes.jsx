import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';

function Athletes() {
    const [epreuves, setEpreuves] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        const fetchEpreuves = async () => {
            try {
                const response = await fetch('http://localhost:3000/api/epreuves', {
                    method: 'GET'
                });
                if (!response.ok) {
                    throw new Error('Erreur lors de la récupération des épreuves');
                }
                const data = await response.json();
                setEpreuves(data);
                setLoading(false);
            } catch (error) {
                console.error('Erreur lors de la récupération des épreuves : ', error);
            }
        };

        fetchEpreuves();
    }, []);

    const handleDelete = async (id) => {
        const confirmDelete = window.confirm("Êtes-vous sûr de vouloir supprimer cette épreuve ?");
        if (!confirmDelete) return;
    
        try {
            const response = await fetch(`http://localhost:3000/api/epreuves/${id}`, {
                method: 'DELETE'
            });
            if (!response.ok) {
                throw new Error('Erreur lors de la suppression de l\'épreuve');
            }
            setEpreuves(epreuves.filter(epreuve => epreuve.id !== id));
        } catch (error) {
            console.error('Erreur lors de la suppression de l\'épreuve : ', error);
        }
    };
    
    

    return (
        <div className="container mx-auto px-4">
            <div className="flex justify-center mt-10">
                <Link to="/admin" className="mx-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Retour</Link>
                <Link to="/admin/formepreuve" className="mx-4 px-4 py-2 bg-green-500 text-white rounded-lg hover:bg-green-600">Ajouter une épreuve</Link>
            </div>
            <h1 className="text-4xl font-bold text-gray-800 text-center my-10">Liste des athlètes</h1>
            {loading ? (
                <p>Chargement en cours...</p>
            ) : (
                <div className="grid gap-4 my-10">
                    <table className="min-w-full divide-y divide-gray-200">
                        <thead className="bg-gray-50">
                            <tr>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Id de l'épreuve</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nom du sport</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Nom de l'épreuve</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Modifier</th>
                                <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Supprimer</th>
                            </tr>
                        </thead>
                        <tbody className="bg-white divide-y divide-gray-200">
                            {epreuves.map(epreuve => (
                                <tr key={epreuve.id}>
                                    <td className="px-6 py-4 whitespace-nowrap">{epreuve.id}</td>
                                    <td className="px-6 py-4 whitespace-nowrap">{epreuve.name_sport}</td>
                                    <td className="px-6 py-4 whitespace-nowrap">{epreuve.name_epreuve}</td>
                                    <td className="px-6 py-4 whitespace-nowrap">
                                        <Link to={`/admin/formepreuve/${epreuve.id}`} className="text-indigo-600 hover:text-indigo-900">Modifier</Link>
                                    </td>
                                    <td className="px-6 py-4 whitespace-nowrap">
                                        <button onClick={() => handleDelete(epreuve.id)} className="text-red-600 hover:text-red-900">Supprimer</button>
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

export default Athletes;
