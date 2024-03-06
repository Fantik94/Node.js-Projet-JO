import React, { useState, useContext, useEffect } from 'react';
import { AuthContext } from './context/AuthContext';

const Connexion = () => {
    const [username, setUsername] = useState('');
    const [password, setPassword] = useState('');
    const [error, setError] = useState('');
    const { setAuthData } = useContext(AuthContext);

    useEffect(() => {
        // Si erreur, effacer le message d'erreur après 2 secondes
        const timer = error ? setTimeout(() => setError(''), 2000) : null;
        return () => clearTimeout(timer);
    }, [error]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        setError('');

        try {
            const response = await fetch('http://localhost:3000/api/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ username, password }),
            });

            const data = await response.json();

            if (response.ok) {
                setAuthData(data);
                // Affichage de l'alerte de succès
                setError('Authentification réussie. Redirection...');
                setTimeout(() => {
                    window.location.href = '/'; // Redirect to the home page after login
                }, 2000);
            } else {
                setError(data.message || 'Nom d’utilisateur ou mot de passe incorrect.');
            }
        } catch (error) {
            setError('Une erreur est survenue lors de la connexion.');
        }
    };

    const alertClass = error === 'Authentification réussie. Redirection...' ? 'bg-green-50 text-green-600 border-green-500' : 'bg-red-50 text-red-600 border-red-500';

    return (
        <section className="bg-gray-50 dark:bg-gray-900">
            <div className="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
                <div className="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
                    <div className="p-6 space-y-4 md:space-y-6 sm:p-8">
                        <form onSubmit={handleSubmit} className="space-y-4 md:space-y-6">
                            <div>
                                <label htmlFor="username" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nom d'utilisateur</label>
                                <input 
                                    type="text"
                                    name="username"
                                    id="username"
                                    className="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white"
                                    placeholder="Nom d'utilisateur"
                                    required=""
                                    value={username}
                                    onChange={(e) => setUsername(e.target.value)}
                                />
                            </div>
                            <div>
                                <label htmlFor="password" className="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Mot de passe</label>
                                <input 
                                    type="password"
                                    name="password"
                                    id="password"
                                    placeholder="*****"
                                    className="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white"
                                    required=""
                                    
                                    onChange={(e) => setPassword(e.target.value)}
                                />
                            </div>
                            <button type="submit" className="w-full text-white bg-blue-600 hover:bg-blue-700 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">Se connecter</button>
                        </form>
                        {error && (
                            <div className={`${alertClass} mt-4 px-4 py-3 rounded-md border-l-4`} role="alert">
                                <p className="font-medium">{error}</p>
                            </div>
                        )}
                    </div>
                </div>
            </div>
        </section>
    );
};

export default Connexion;
