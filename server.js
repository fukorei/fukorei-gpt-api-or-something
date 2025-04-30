const express = require('express');
const axios = require('axios');
const app = express();

app.use(express.json());

app.post('/api/generate', async (req, res) => {
  const { model, prompt } = req.body;

  try {
    const response = await axios.post('http://localhost:11434/api/generate', {
      model,
      prompt
    });

    res.json({ response: response.data.response });
  } catch (err) {
    console.error(err.message);
    res.status(500).json({ error: 'Failed to generate response.' });
  }
});

app.get('/', (req, res) => {
  res.send('Ollama API is running!');
});

app.listen(3000, () => {
  console.log('Server listening on port 3000');
});