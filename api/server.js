import express from 'express';
import { createPool } from 'mysql2/promise';
import cors from 'cors';

const app = express();
const PORT = 3000;



const pool = createPool({
  host: 'localhost',
  user: 'projet_jo',
  password: 'projet_jo',
  database: 'projet_jo',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

//middleware
app.use(cors());

app.get('/api/data', async (req, res) => {
    try {
      const [rows, fields] = await pool.query('SELECT * FROM sports');
      res.json(rows);
    } catch (error) {
      console.error('Error fetching data from the database:', error);
      res.status(500).send('Server Error');
    }
  });

app.listen(PORT, () => {
    console.log(`Serveur démarré sur le port ${PORT}`);
});