import React from 'react';
import Carousel from './Carousel';

const Home = () => {
    return (
        <div className="container mx-auto px-4">
            <section className="text-center my-10">
                <h1 className="text-4xl font-bold text-gray-800">Bienvenue sur le site des Jeux Olympiques</h1>
                <p className="text-gray-600 mt-4">Découvrez les sports, les épreuves et les sites olympiques de Paris 2024.</p>
            </section>

            <Carousel />

        </div>
    );
};

export default Home;
