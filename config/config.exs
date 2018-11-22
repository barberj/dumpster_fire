# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dumpster_fire,
  ecto_repos: [DumpsterFire.Repo]

# Configures the endpoint
config :dumpster_fire, DumpsterFireWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ttiBDo9NIK35qDn6l+tHe3QNfBEL2KAuJRzn1OgK3K1itqVAef+BHY1ittTPWh2R",
  render_errors: [view: DumpsterFireWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DumpsterFire.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
