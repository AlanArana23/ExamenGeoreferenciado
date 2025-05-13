const express = require('express');
const cors = require('cors');
const pool = require('./config_DB');

const app = express();
app.use(cors());

app.get('/puntos', async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT id, nombre, tipo, capacidad, responsable, telefono, correo, zona, ST_AsGeoJSON(geom) AS geom 
      FROM lugares WHERE geom IS NOT NULL;
    `);
    const geojson = {
      type: "FeatureCollection",
      features: result.rows.map(row => ({
        type: "Feature",
        geometry: JSON.parse(row.geom),
        properties: {
          id: row.id,
          nombre: row.nombre,
          tipo: row.tipo,
          capacidad: row.capacidad,
          responsable: row.responsable,
          telefono: row.telefono,
          correo: row.correo,
          zona: row.zona
        }
      }))
    };
    res.json(geojson);
  } catch (error) {
    console.error("❌ Error en /puntos:", error.message);
    res.status(500).send("Error al obtener puntos");
  }
});

app.get('/poligonos', async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT id, nombre, categoria, zona, superficie, ST_AsGeoJSON(geom) AS geom 
      FROM poligonos WHERE geom IS NOT NULL;
    `);
    const geojson = {
      type: "FeatureCollection",
      features: result.rows.map(row => ({
        type: "Feature",
        geometry: JSON.parse(row.geom),
        properties: {
          id: row.id,
          nombre: row.nombre,
          categoria: row.categoria,
          zona: row.zona,
          superficie: row.superficie
        }
      }))
    };
    res.json(geojson);
  } catch (error) {
    console.error("❌ Error en /poligonos:", error.message);
    res.status(500).send("Error al obtener poligonos");
  }
});

app.listen(3000, () => {
  console.log('✅ Servidor corriendo en http://localhost:3000');
});