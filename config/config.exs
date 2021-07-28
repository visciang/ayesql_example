import Config

config :ayesql,
  run?: true

config :example, :db,
  hostname: "localhost",
  username: "postgres",
  password: "postgres",
  database: "postgres",
  pool_size: 5
