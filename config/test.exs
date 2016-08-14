use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_status, ElixirStatus.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_status, ElixirStatus.Repo,
  adapter: Ecto.Adapters.MySQL,
  pool: Ecto.Adapters.SQL.Sandbox,
  username: System.get_env("MYSQL_TEST_DB_USERNAME") || "neopoly",
  password: System.get_env("MYSQL_TEST_DB_PASSWORD") || "neopoly",
  database: "elixir_status_test",
  size: 1 # Use a single connection for transactional tests


config :elixir_status, :base_url, "http://test.local"
config :elixir_status, :admin_user_ids, [1234]
