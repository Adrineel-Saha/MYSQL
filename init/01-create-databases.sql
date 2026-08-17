-- Runs once, on first startup of the shared MySQL server (when mysql-data is
-- empty). MYSQL_DATABASE in compose only creates a single database, so the
-- per-service databases are created here instead. One logical database per
-- service preserves database-per-service isolation on a shared server.
CREATE DATABASE IF NOT EXISTS UserServiceDatabase;
CREATE DATABASE IF NOT EXISTS AuthServiceDatabase;
CREATE DATABASE IF NOT EXISTS OrderServiceDatabase;
CREATE DATABASE IF NOT EXISTS ProductServiceDatabase;
