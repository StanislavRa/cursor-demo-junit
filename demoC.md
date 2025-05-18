# Demo C – Compile, Tests & SQL

## Goal

Add a `/health` endpoint and JUnit 5 test to a Fastify‑based service, including a database ping built from the real schema.

## Steps

1. **Install test & DB servers**

   ```bash
   npm install -g junit-runner mcp-postgres-ro
   ```

2. **Register them**

   ```jsonc
   {
     "mcpServers": {
       "junit": { "command": "junit-runner" },
       "psql":  {
         "command": "mcp-postgres-ro",
         "args": ["--connection", "postgres://user:pass@localhost:5432/app"]
       }
     }
   }
   ```

3. **Pin the database schema**

   In Composer click **📎 Pin file** and select `schema.sql`.

4. **Run the agent**

   ```txt
   Add a /health endpoint to our Fastify 5 service and a JUnit 5 test.
   The endpoint should ping the database.
   use junit
   use psql
   ```

5. **Loop logic**

   Agent edits code → `junit → mvn test` → fixes failures → repeats  
   `psql` provides live table structure so SQL is type‑safe.

## Expected result

* `mvn test` ends **green**.  
* Generated SQL matches columns from `schema.sql`.  
* Git diff includes endpoint, service code, test class, and passes CI.
