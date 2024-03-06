import React, { useState, useEffect } from 'react';

const Epreuves = () => {
    const [epreuves, setEpreuves] = useState([]);
    const [sports, setSports] = useState([]);
    const [selectedSport, setSelectedSport] = useState('');
    const [podiums, setPodiums] = useState({});

    useEffect(() => {
        fetchEpreuvesAndSports();
    }, []);

    const fetchEpreuvesAndSports = async () => {
        const epreuvesResponse = await fetch('http://localhost:3000/api/epreuves');
        const epreuvesData = await epreuvesResponse.json();
        setEpreuves(epreuvesData);

        const uniqueSports = epreuvesData.reduce((acc, current) => {
            const found = acc.find(sport => sport.name_sport === current.name_sport);
            if (!found) {
                acc.push({ name_sport: current.name_sport, img_sport: current.img_sport });
            }
            return acc;
        }, []);
        setSports(uniqueSports);

        // Fetch podium for each epreuve
        for (let epreuve of epreuvesData) {
            const podiumResponse = await fetch(`http://localhost:3000/api/podium/${epreuve.id}`);
            const podiumData = await podiumResponse.json();
            setPodiums(prevPodiums => ({ ...prevPodiums, [epreuve.id]: podiumData }));
        }
    };

    const groupEpreuvesByCategory = () => {
        return epreuves
            .filter(epreuve => !selectedSport || epreuve.name_sport === selectedSport)
            .reduce((acc, current) => {
                (acc[current.name_sport] = acc[current.name_sport] || []).push(current);
                return acc;
            }, {});
    };

    const groupedEpreuves = groupEpreuvesByCategory();

    return (
        <div className="container mx-auto px-4 py-8">
            <h1 className="text-3xl font-bold text-center text-gray-800 mb-2">Voici la liste des épreuves des JO olympiques 2024 Paris</h1>

            <div className="flex justify-end mb-8">
                <form className="max-w-sm">
                    <label htmlFor="sport-select" className="block mb-2 text-sm font-medium text-gray-900">Choisir un sport</label>
                    <select
                        id="sport-select"
                        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"

                        value={selectedSport}
                        onChange={(e) => setSelectedSport(e.target.value)}
                    >
                        <option value="">Tous les sports</option>
                        {sports.map((sport) => (
                            <option key={sport.name_sport} value={sport.name_sport}>{sport.name_sport}</option>
                        ))}
                    </select>
                </form>
            </div>

            {Object.entries(groupedEpreuves).map(([category, epreuves]) => (
                <section key={category} className="mb-16">
                    <div className="mb-8 relative">
                        <img src={sports.find(sport => sport.name_sport === category)?.img_sport || ''} alt={category} className="w-full h-64 object-cover rounded-lg shadow-lg" />
                        <h2 className="absolute inset-0 flex items-center justify-center font-bold text-3xl text-white bg-black bg-opacity-40">{category}</h2>
                    </div>
                    <div className="flex flex-wrap -mx-4 justify-center">
                        {epreuves.map((epreuve) => (
                            <div key={epreuve.id} className="p-4 w-full sm:w-1/2 md:w-1/3 lg:w-1/4 xl:w-1/5">
                                <div className="bg-white rounded-lg shadow-lg overflow-hidden flex flex-col justify-between h-full">
                                    <div className="p-6 flex flex-col justify-between">
                                        <h5 className="text-lg font-semibold mb-2">{epreuve.name_epreuve}</h5>
                                        {/* Ajout du podium si disponible */}
                                        {podiums[epreuve.id] && (
                                            <div className="mt-4">
                                                {podiums[epreuve.id].map((athlete, index) => (
                                                    <div key={index} className="flex items-center justify-between mt-2">
                                                        <span className={`font-semibold ${index === 0 ? 'text-gold-500' : index === 1 ? 'text-silver-500' : 'text-bronze-500'}`}>
                                                            {index + 1}. {athlete.name_athlete}
                                                        </span>
                                                        <span className="text-sm text-gray-600">
                                                            {athlete.medaille}
                                                        </span>
                                                    </div>
                                                ))}
                                            </div>
                                        )}
                                    </div>
                                    <div className="px-6 py-3 bg-gradient-to-r from-blue-500 to-teal-400">
                                        <span className="text-white text-sm">Découvrir plus</span>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>
                </section>
            ))}
        </div>
    );
};

export default Epreuves;
