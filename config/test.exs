use Mix.Config

# Configure your database
config :extropy, Extropy.Repo,
  username: "postgres",
  password: "postgres",
  database: "extropy_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :extropy, ExtropyWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
