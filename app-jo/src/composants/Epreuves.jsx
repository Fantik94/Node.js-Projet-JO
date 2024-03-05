import React, { useState, useEffect } from 'react';

const Epreuves = () => {
    const [epreuve, setEpreuves] = useState([]);

    useEffect(() => {
        const fetchEpreuves = async () => {
            const response = await fetch('http://localhost:3000/api/epreuves');
            const data = await response.json();
            setEpreuves(data);
            console.log(data);
        };

        fetchEpreuves();

    }, []);

    return (
        <div className="container mx-auto p-4">
            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                {epreuve.map((epreuve) => (
                    <div key={epreuve.id} className="max-w-sm bg-white border border-gray-200 rounded-lg shadow-md overflow-hidden">
                        <img
                            src={epreuve.img_sport}
                            alt={epreuve.name_sport}
                            className="rounded-t-lg object-cover h-48 w-full"
                        />
                        <div className="p-5">
                            <h5 className="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">{epreuve.name_sport}</h5>
                            <p className="mb-3 font-normal text-gray-700 ">{epreuve.name_epreuve}</p>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
};

export default Epreuves;
