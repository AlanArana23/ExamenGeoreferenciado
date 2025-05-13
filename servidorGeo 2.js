const express = require('express');
const cors = require('cors');
const pool = require('./config_DB');

const app = express();
app.use(cors());

app.listen(3000, () => {
  console.log('✅ Servidor corriendo en http://localhost:3000');
});

app.get('/puntos', async (req, res) => {
  try {
    const result = await pool.query(`
      SELECT id, nombre, ST_AsGeoJSON(geom) AS geom FROM lugares;
    `);

    const geojson = {
      type: "FeatureCollection",
      features: result.rows.map(row => ({
        type: "Feature",
        geometry: JSON.parse(row.geom),
        properties: { id: row.id, nombre: row.nombre }
      }))
    };

    res.json(geojson);
  } catch (err) {
    console.error("❌ Error en /puntos:", err);
    res.status(500).send("Error al obtener los puntos");
  }
});