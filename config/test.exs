use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phoenix101, Phoenix101Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :phoenix101, Phoenix101.Repo,
  username: "postgres",
  password: "postgres",
  database: "phoenix101_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
