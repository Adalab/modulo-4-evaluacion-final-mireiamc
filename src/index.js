const express = require('express');
const cors = require('cors');
const mysql = require('mysql2/promise');
require('dotenv').config();

// create and config server
const server = express();
server.use(cors());
server.use(express.json());

// init express aplication
const serverPort = 3001;
server.listen(serverPort, () => {
  console.log(`Server listening at http://localhost:${serverPort}`);
});

// conexion con la BD
async function getConnection() {
  const connection = await mysql.createConnection({
    host: process.env.HOST,
    user: process.env.DBUSER,
    password: process.env.PASS,
    database: process.env.DATABASE,
  });
  await connection.connect();
  console.log(
    `Conexión establecida con la base de datos (identificador=${connection.threadId})`
  );

  return connection;
}
// Endpoint para ver todas las recetas de Harry Potter que hay en la BD
server.get('/recipes', async (req, res) => {
  const connection = await getConnection();
  const query = 'SELECT * FROM recipes';
  const [results, fields] = await connection.query(query);
  connection.end();
  res.json(results);
});

// Endpoint para acceder a la información de una receta según el id del elemento en la BD.
server.get('/recipes/:id', async (req, res) => {
  const connection = await getConnection();
  // La siguiente linea, le pedimos que en el enpoint /:id ese parametro sea variable segun lo que pongamos.
  const recipeID = req.params.id;
  const query = 'SELECT * FROM recipes WHERE id = ?';
  const [results, fields] = await connection.query(query, [recipeID]);
  connection.end();
  res.json(results);
});

// Endpoint para poder añadir recetas nuevas.
server.post('/recipes', async (req, res) => {
  try {
    const connection = await getConnection();
    const query =
      'INSERT INTO recipes (name, ingredientes, instructions) VALUES (?, ?, ?);';
    const [results, fields] = await connection.query(query, [
      req.body.name,
      req.body.ingredientes,
      req.body.instructions,
    ]);
    connection.end();
    res.json({
      succes: true,
      id: results.insertId,
    });
  } catch (error) {
    res.json({
      succes: false,
      message: 'Revisa que todos los campos hayan sido completados',
    });
  }
});

// server.put('/recipes/:id', async (req, res) => {
//   try {
//     const connection = await getConnection();
//     // La siguiente linea, le pedimos que en el enpoint /:id ese parametro sea variable segun lo que pongamos.
//     const recipeID = req.params.id;
//     const query =
//       'UPDATE recipes SET name = ?, ingredientes = ?, instructions = ? WHERE id= ?;';
//     const [results, fields] = await connection.query(query, [
//       req.body.name,
//       req.body.ingredientes,
//       req.body.instructions,
//       recipeID,
//     ]);
//     connection.end();
//     res.json({
//       success: true,
//     });
//   } catch (error) {
//     res.json({
//       succes: false,
//       message:
//         'Revisa que todos los campos hayan sido completados',
//     });
//   }
// });
