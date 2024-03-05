import express from 'express';
import cors from 'cors';
import bcrypt from 'bcrypt';
import { createPool } from 'mysql2/promise';

const app = express();
const PORT = process.env.PORT;

// Connexion à la base de données MySQL
const pool = createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password:  process.env.DB_PASSWORD,
    database:  process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

// Middleware pour parser le JSON
app.use(express.json());
app.use(cors());

// Route pour l'authentification
app.post('/api/login', async (req, res) => {
    const { username, password } = req.body;

    try {
        // Récupération des informations de l'utilisateur depuis la base de données
        const [rows] = await pool.execute('SELECT * FROM users WHERE identifiant = ?', [username]);

        // Vérification si l'utilisateur existe
        if (rows.length === 0) {
            return res.status(400).json({ message: 'Nom d\'utilisateur incorrect' });
        }

        const user = rows[0];

        // Vérification du mot de passe
        if (!bcrypt.compareSync(password, user.password)) {
            return res.status(400).json({ message: 'Mot de passe incorrect' });
        }

        res.json({ message: 'Authentification réussie' });
    } catch (error) {
        console.error('Erreur lors de l\'authentification : ', error);
        res.status(500).json({ message: 'Erreur serveur' });
    }
});

app.get('/api/data', async (req, res) => {
    try {
      const [rows, fields] = await pool.query('SELECT * FROM sports');
      res.json(rows);
    } catch (error) {
        console.error('Erreur lors de la récupération des données : ', error);
        res.status(500).json({ message: 'Erreur serveur' });
    }
});

app.listen(PORT, () => {
    console.log(`Serveur démarré sur le port ${PORT}`);
});