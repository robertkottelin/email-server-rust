-- Add migration script here
-- export DATABASE_URL=postgres://postgres:password@127.0.0.1:5432/newsletter
-- sqlx migrate add create_subscriptions_table
-- Create Subscriptions Table
CREATE TABLE subscriptions(
   id uuid NOT NULL,
   PRIMARY KEY (id),
   email TEXT NOT NULL UNIQUE,
   name TEXT NOT NULL,
   subscribed_at timestamptz NOT NULL
);
