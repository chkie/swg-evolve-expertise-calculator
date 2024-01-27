
# swg-evolve-expertise-calculator

# Dependencies

This project includes the following main dependencies:

- `dotenv`: Version ^16.4.1 - Loads environment variables from a `.env` file into `process.env`.
- `express`: Version ^4.18.2 - Web framework for Node.js.
- `pg`: Version ^8.11.3 - Non-blocking PostgreSQL client for Node.js.

Development Dependencies:

- `nodemon`: Version ^3.0.3 - Utility that monitors for any changes in your source and automatically restarts your server.

## Quick Start Guide

To get started with this project, follow these steps:

## Clone the Repository

```bash
git clone [https://github.com/chkie/swg-evolve-expertise-calculator.git]
```

   or

```bash
git clone [git@github.com:chkie/swg-evolve-expertise-calculator.git]

cd [repository-directory]
```

### Install Dependencies

Install all necessary packages using npm:

```bash
npm install
```

### Environment Variables

Ensure you have a .env file in your project root with all the required environment settings. This file is used by the dotenv package.

### Start the Server

For development, you can use nodemon for hot reloads

```bash
npm run dev
```

For a standard start, use:

```bash
npm start
```

### Database Configuration

Configure your PostgreSQL database connection details in the .env file or the relevant configuration file in your project. The pg package is used for database interactions.

### Verify Installation

Once the server is running, you can access the application at the defined HOST and PORT in your .env file, typically <http://localhost:3000> for local development.

Feel free to modify and adapt these steps as needed for your specific setup and requirements
>>>>>>> master
