CREATE TABLE tenants (
  id UUID PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  schema_name VARCHAR(255) NOT NULL UNIQUE,
  subscription_plan VARCHAR(100),
  created_at TIMESTAMP DEFAULT now()
);
CREATE TABLE users (
  id UUID PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  tenant_id UUID REFERENCES tenants(id),
  role VARCHAR(50) DEFAULT 'USER'
);