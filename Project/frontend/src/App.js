import React, { useState, useEffect } from 'react';
import axios from 'axios';

function App() {
  const [message, setMessage] = useState('');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Testar conexão com Django
    axios.get('/api/status/')
      .then(response => {
        setMessage(response.data.status);
        setLoading(false);
      })
      .catch(error => {
        console.error('Erro ao conectar com Django:', error);
        setMessage('Erro: Django não está a responder');
        setLoading(false);
      });
  }, []);

  return (
    <div> Olá </div>
  );
}

export default App;