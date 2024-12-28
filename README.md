# PostgreSQL Sales Financing Database

## Overview
This project contains the schema, queries, and example scripts for a PostgreSQL database designed for a sales financing business. The database tracks customers, contracts, payments, and vendors, and is intended to migrate from a paper-based system to a fully digital implementation.

## Features
- **Customers**: Stores customer information, including account numbers and contact details.
- **Vendors**: Tracks vendors from whom contracts are purchased.
- **Contracts**: Manages contract details, payment schedules, and product delivery statuses.
- **Payments**: Logs customer payments by date and amount.

## Project Structure
- `schema/`: SQL scripts for creating database tables.
- `queries/`: Example queries for interacting with the database.
- `migrations/`: Scripts for making database changes over time.

## Triggers
- The `triggers.sql` file contains logic to automatically update the `paid_in_full` status in the `Contracts` table whenever payments are added or updated in the `Payments` table.

## Usage
1. Install PostgreSQL on your system.
2. Run the scripts in the `schema/` folder to create the database schema.
3. Use example queries in the `queries/` folder to test the database.

## License
This project is open-source and available under the [MIT License](LICENSE).
