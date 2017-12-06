# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :deploy_phoenix,
  ecto_repos: [DeployPhoenix.Repo]

# Configures the endpoint
config :deploy_phoenix, DeployPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1Db7muKw5ccIZRRyMqO94OrySdHQQ6/G5xLNgbUlPAivJ8eBoE6I9/MLVSZ6AyEV",
  render_errors: [view: DeployPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeployPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
