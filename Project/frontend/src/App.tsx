import React, { useState, useEffect } from 'react';
import axios from 'axios';
import logo from './logo.svg';
import './App.css';

interface ApiResponse {
  message: string;
}

function App() {
  const [message, setMessage] = useState<string>('Carregando...');
  const [error, setError] = useState<string>('');

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get<ApiResponse>('http://localhost:8000/api/hello/');
        setMessage(response.data.message);
      } catch (err) {
        setError('Erro ao conectar com a API Django. Certifique-se de que o servidor está rodando.');
        console.error('Erro:', err);
      }
    };

    fetchData();
  }, []);

  return (
    <div className="App">
      ola
    </div>
  );
}

export default App;
