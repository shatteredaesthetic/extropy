# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :extropy,
  ecto_repos: [Extropy.Repo]

# Configures the endpoint
config :extropy, ExtropyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8zDGy4V5nXIQ3ay1YBSXf8NP6R9yNzsog3GB0Dzih149TopiBdnBS3kCajB6r6rI",
  render_errors: [view: ExtropyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Extropy.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
