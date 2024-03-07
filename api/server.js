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
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

// Middleware
app.use(express.json());
app.use(cors());

// Route pour l'authentification
app.post('/api/login', async (req, res) => {
  const { username, password } = req.body;

  try {
    const [rows] = await pool.execute('SELECT * FROM users WHERE identifiant = ?', [username]);

    if (rows.length === 0) {
      return res.status(400).json({ message: 'Nom d\'utilisateur ou mot de passe incorrect' });
    }

    const user = rows[0];

    if (!bcrypt.compareSync(password, user.password)) {
      return res.status(400).json({ message: 'Nom d\'utilisateur ou mot de passe incorrect' });
    }

    res.json({ message: 'Authentification réussie' });
  } catch (error) {
    console.error('Erreur lors de l\'authentification : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

/******ROUTES CRUD POUR EPREUVES ET SPORTS********/
//Create Routes
app.post('/api/epreuves', async (req, res) => {
  const { idSport, epreuve } = req.body;

  try {
    const [result] = await pool.execute('INSERT INTO epreuves (id_sports, epreuves) VALUES (?, ?)', [idSport, epreuve]);

    const newEpreuveId = result.insertId;

    res.status(201).json({ id: newEpreuveId, idSport, epreuve });
  } catch (error) {
    console.error('Erreur lors de la création de l\'épreuve : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.post('/api/sports', async (req, res) => {
  const { name_sport, site_olympique, img_sport } = req.body;

  try {
    const [result] = await pool.execute('INSERT INTO sports (name_sport, site_olympique, img_sport) VALUES (?, ?, ?)', [name_sport, site_olympique, img_sport]);

    const newSportId = result.insertId;

    res.status(201).json({ id: newSportId, name_sport, site_olympique, img_sport });
  } catch (error) {
    console.error('Erreur lors de la création du sport : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.get('/api/epreuves', async (req, res) => {
  try {
    const [rows, fields] = await pool.query('SELECT epreuves.*, sports.name_sport , sports.img_sport FROM epreuves JOIN sports ON sports.id = epreuves.id_sport');
    res.json(rows);
  } catch (error) {
    console.error('Erreur lors de la récupération des données : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.get('/api/sports', async (req, res) => {
  try {
    const [rows, fields] = await pool.query('SELECT * FROM sports');
    res.json(rows);
  } catch (error) {
    console.error('Erreur lors de la récupération des données : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.get('/api/epreuves/:id', async (req, res) => {
  const epreuveId = req.params.id;
  
  try {
    const [rows, fields] = await pool.query('SELECT * FROM epreuves WHERE id_sport = ?', [epreuveId]);
    res.json(rows);
  } catch (error) {
    console.error('Erreur lors de la récupération des données : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.get('/api/sports/:id', async (req, res) => {
  const sportId = req.params.id;
  
  try {
    const [rows, fields] = await pool.query('SELECT * FROM sports WHERE id = ?', [sportId]);
    res.json(rows);
  } catch (error) {
    console.error('Erreur lors de la récupération des données : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

//Update Routes
app.put('/api/epreuves/:id', async (req, res) => {
  const epreuveId = req.params.id;
  const { epreuve } = req.body;

  try {
    const [result] = await pool.execute('UPDATE epreuves SET epreuves = ? WHERE id = ?', [epreuve, epreuveId]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'L\'épreuve spécifiée n\'existe pas' });
    }

    res.json({ id: epreuveId, epreuve });
  } catch (error) {
    console.error('Erreur lors de la mise à jour de l\'épreuve : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.put('/api/sports/:id', async (req, res) => {
  const sportId = req.params.id;
  const { name_sport, site_olympique, img_sport } = req.body;

  try {
    const [result] = await pool.execute('UPDATE sports SET name_sport = ?, site_olympique = ?, img_sport = ? WHERE id = ?', [name_sport, site_olympique, img_sport, sportId]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Le sport spécifié n\'existe pas' });
    }

    res.json({ id: sportId, name_sport, site_olympique, img_sport });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du sport : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

//Delete Routes
app.delete('/api/epreuves/:id', async (req, res) => {
  const epreuveId = req.params.id;

  try {
    const [result] = await pool.execute('DELETE FROM epreuves WHERE id = ?', [epreuveId]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'L\'épreuve spécifiée n\'existe pas' });
    }
    res.json({ id: epreuveId, message: 'L\'épreuve a été supprimée avec succès' });
  } catch (error) {
    console.error('Erreur lors de la suppression de l\'épreuve : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});

app.delete('/api/sports/:id', async (req, res) => {
  const sportId = req.params.id;

  try {
    const [result] = await pool.execute('DELETE FROM sports WHERE id = ?', [sportId]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ message: 'Le sport spécifiée n\'existe pas' });
    }

    res.json({ id: sportId, message: 'Le sport a été supprimée avec succès' });
  } catch (error) {
    console.error('Erreur lors de la suppression du sport : ', error);
    res.status(500).json({ message: 'Erreur serveur' });
  }
});


app.get('/api/podium/:idEpreuve', async (req, res) => {
  const { idEpreuve } = req.params;
  
  try {
      const [rows] = await pool.query(`
          SELECT * FROM athletes 
          WHERE id_epreuve = ? 
          ORDER BY FIELD(medaille, 'Or', 'Argent', 'Bronze') 
          LIMIT 3
      `, [idEpreuve]);
      res.json(rows);
  } catch (error) {
      console.error('Error fetching podium: ', error);
      res.status(500).send('Server Error');
  }
});




app.listen(PORT, () => {
  console.log(`Serveur démarré sur le port ${PORT}`);
});