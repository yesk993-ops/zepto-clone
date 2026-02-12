const express = require("express");
const path = require("path");

const app = express();

const PORT = 8080;

// Serve React static files
app.use(express.static(path.join(__dirname, "build")));

// SPA fallback (Express 5 SAFE method)
app.use((req, res) => {
  res.sendFile(path.join(__dirname, "build", "index.html"));
});

app.listen(PORT, () => {
  console.log(`Frontend running on port ${PORT}`);
});
