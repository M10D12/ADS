# React + Django Web Application

Esta é uma aplicação web full-stack desenvolvida com **React** no frontend e **Django** no backend.

## 📁 Estrutura do Projeto

```
Project/
├── backend/           # API Django com Django REST Framework
│   ├── core/          # Configurações principais do Django
│   ├── api/           # Aplicação da API
│   ├── manage.py      # Script de gerenciamento do Django
│   ├── Pipfile        # Dependências Python (pipenv)
│   └── Pipfile.lock   # Lock file do pipenv
├── frontend/          # Aplicação React com TypeScript
│   ├── src/           # Código fonte React
│   ├── public/        # Arquivos públicos
│   ├── package.json   # Dependências Node.js
│   └── ...
└── README.md          # Este arquivo
```

## 🚀 Como Executar o Projeto

### Pré-requisitos

- **Python 3.8+** instalado
- **Node.js 16+** e **npm** instalados
- **pipenv** instalado (`pip install pipenv`)

### 1. Backend (Django)

```powershell
# Navegar para o diretório backend
cd backend

# Ativar o ambiente virtual e instalar dependências
pipenv shell
pipenv install

# Executar migrações (caso necessário)
pipenv run python manage.py migrate

# Iniciar o servidor Django
pipenv run python manage.py runserver
```

O backend estará disponível em: **http://localhost:8000**

### 2. Frontend (React)

Em um novo terminal:

```powershell
# Navegar para o diretório frontend
cd frontend

# Instalar dependências (se ainda não instaladas)
npm install

# Iniciar o servidor de desenvolvimento React
npm start
```

O frontend estará disponível em: **http://localhost:3000**

## 🔧 Configuração

### Backend (Django)

- **Framework**: Django 5.2.6
- **API**: Django REST Framework
- **CORS**: django-cors-headers configurado para aceitar requisições do React
- **Database**: SQLite (padrão, pode ser alterado no `settings.py`)

### Frontend (React)

- **Framework**: React 18 com TypeScript
- **HTTP Client**: Axios para requisições à API
- **Estilização**: CSS padrão do Create React App

## 📡 API Endpoints

### GET /api/hello/
Retorna uma mensagem de teste do Django.

**Resposta:**
```json
{
  "message": "Hello World from Django API!"
}
```

## 🧪 Testando a Integração

1. Certifique-se de que o backend Django está rodando em `http://localhost:8000`
2. Certifique-se de que o frontend React está rodando em `http://localhost:3000`
3. Abra o navegador em `http://localhost:3000`
4. Você deve ver a mensagem da API Django sendo exibida na interface React

## 📝 Próximos Passos

### Para o Backend:
- Adicionar autenticação (JWT, Session, etc.)
- Criar mais endpoints da API
- Configurar banco de dados de produção (PostgreSQL, MySQL)
- Adicionar testes automatizados
- Configurar variáveis de ambiente

### Para o Frontend:
- Implementar roteamento (React Router)
- Adicionar gerenciamento de estado (Redux, Zustand)
- Melhorar a interface (Material-UI, Tailwind CSS)
- Adicionar autenticação no frontend
- Implementar testes (Jest, React Testing Library)

## 🛠️ Comandos Úteis

### Backend
```powershell
# Criar uma nova aplicação Django
pipenv run python manage.py startapp nome_app

# Criar migrações
pipenv run python manage.py makemigrations

# Aplicar migrações
pipenv run python manage.py migrate

# Criar superusuário
pipenv run python manage.py createsuperuser

# Abrir shell Django
pipenv run python manage.py shell
```

### Frontend
```powershell
# Executar testes
npm test

# Build para produção
npm run build

# Instalar nova dependência
npm install nome-pacote
```

## 🚨 Troubleshooting

### Problema: CORS Error
**Solução**: Certifique-se de que o `django-cors-headers` está instalado e configurado corretamente no `settings.py`.

### Problema: Erro de conexão entre React e Django
**Solução**: 
1. Verifique se o Django está rodando em `http://localhost:8000`
2. Verifique se a URL da API no React está correta (`http://localhost:8000/api/hello/`)

### Problema: Dependências não encontradas
**Solução**: 
- Para Python: `pipenv install`
- Para Node.js: `npm install`

## 📄 Licença

Este projeto é para fins educacionais.