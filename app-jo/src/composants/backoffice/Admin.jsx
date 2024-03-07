import React from 'react';
import { Link } from 'react-router-dom';

const Admin = () => {
    return (
        <div className="container mx-auto px-4">
            <h1 className="text-4xl font-bold text-gray-800 text-center my-10">Bienvenue sur le Dashboard</h1>
            <div className="flex justify-center">
                <Link to="/admin/sports" className="mx-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Gérer les sports</Link>
                <Link to="/admin/epreuves" className="mx-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Gérer les épreuves</Link>
            </div>
            <div className='flex justify-center mt-6'>
                <Link to="/admin/athletes" className="mx-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600">Gérer les athlètes</Link>
            </div>
        </div>
    );
};

export default Admin;
