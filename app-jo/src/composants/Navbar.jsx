import React from 'react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUserCircle } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';

const Navbar = () => {
    return (
        <nav className="bg-white text-black p-2 shadow-md">
            <div className="container mx-auto flex justify-between items-center">
                <div className="flex items-center">
                    <Link to="/">
                        <img src="/logo.webp" alt="Logo" className="h-14 mr-10" />
                    </Link>
                    <div className="flex gap-4 ml-10"> 
                        <Link to="/sports" className="hover:text-gray-800">Sports</Link>
                        <Link to="/epreuves" className="hover:text-gray-800">Epreuves</Link>
                        <Link to="/sites" className="hover:text-gray-800">Sites Olympiques</Link>
                    </div>
                </div>

                <div>
                    <Link to="/login" className="hover:text-gray-800">
                        <FontAwesomeIcon icon={faUserCircle} size="2x" />
                    </Link>
                </div>
            </div>
        </nav>
    );
};

export default Navbar;
