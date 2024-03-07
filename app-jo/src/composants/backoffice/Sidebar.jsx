// Sidebar.jsx
import React from 'react';
import { NavLink } from 'react-router-dom';

const Sidebar = () => {
    return (
        <div className="z-20 h-screen fixed top-0 left-0 bg-white shadow-xl w-64">
            <div className="flex flex-col justify-between h-full">
                <div>
                    <div className="text-gray-900 text-lg font-semibold p-4 border-b mt-16">
                        Backoffice
                    </div>
                    <nav className="px-4 py-6">
                        <NavLink
                            to="/admin"
                            className={({ isActive }) =>
                                isActive
                                    ? "block p-2.5 mb-2 font-medium text-white bg-blue-600 rounded"
                                    : "block p-2.5 mb-2 font-medium text-gray-700 rounded hover:bg-gray-100"
                            }
                        >
                            Dashboard
                        </NavLink>
                        <NavLink
                            to="/admin/sports"
                            className={({ isActive }) =>
                                isActive
                                    ? "block p-2.5 mb-2 font-medium text-white bg-blue-600 rounded"
                                    : "block p-2.5 mb-2 font-medium text-gray-700 rounded hover:bg-gray-100"
                            }
                        >
                            Gérer les sports
                        </NavLink>
                        <NavLink
                            to="/admin/epreuves"
                            className={({ isActive }) =>
                                isActive
                                    ? "block p-2.5 mb-2 font-medium text-white bg-blue-600 rounded"
                                    : "block p-2.5 mb-2 font-medium text-gray-700 rounded hover:bg-gray-100"
                            }
                        >
                            Gérer les épreuves
                        </NavLink>
                        <NavLink
                            to="/admin/athletes"
                            className={({ isActive }) =>
                                isActive
                                    ? "block p-2.5 mb-2 font-medium text-white bg-blue-600 rounded"
                                    : "block p-2.5 mb-2 font-medium text-gray-700 rounded hover:bg-gray-100"
                            }
                        >
                            Gérer les athlètes
                        </NavLink>
                    </nav>
                </div>
                <div className="px-4 py-2 border-t">
                
                </div>
            </div>
        </div>
    );
};

export default Sidebar;
