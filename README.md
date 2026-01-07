# Silver Screen dbt Project

## Project Overview
This project was developed as part of a dbt Cloud course to analyze the monthly performance of movie screenings for the Silver Screen movie theater chain in New Jersey.

The main goal is to provide a consolidated monthly view of:
- Ticket sales
- Revenue
- Rental costs

per movie and per theater location.

---

## Project Structure
The project follows dbt best practices and is organized into three main layers:

- **Staging (`staging/`)**  
  Cleans and standardizes raw source data from Snowflake.

- **Intermediate (`intermediate/`)**  
  Applies business logic and monthly aggregations.

- **Marts (`marts/`)**  
  Contains final analytical models ready for reporting and BI tools.

---

## Data Sources
The project uses the following source tables loaded into Snowflake:
- `movie_catalogue`
- `invoices`
- `nj_001`
- `nj_002`
- `nj_003`

All sources are defined in YAML files and referenced using `source()`.

---

## Final Model
The main output of the project is the fact table:

**`fct_movie_monthly_performance`**

This model provides monthly metrics at the following grain:
- movie
- location
- month

### Key metrics:
- `tickets_sold`
- `revenue`
- `rental_cost`

---

## Testing
The project includes:
- Schema tests (`not_null`, `unique`)
- A custom singular test to ensure `tickets_sold` values are not negative

All models and tests are executed using `dbt build`.

---

## Orchestration
The project is automated using dbt Cloud:
- A production job runs `dbt build`
- The job executes all models, tests, and documentation generation

---

## How to Run
```bash
dbt build
