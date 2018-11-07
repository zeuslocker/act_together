# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :act_together,
  ecto_repos: [ActTogether.Repo]

# Configures the endpoint
config :act_together, ActTogetherWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "r0cEB2RCslKVb4RPUfEAAF6p/B8PRoGEnd5or0XmnPQvIJ4FEixpP84TVGO/0fDV",
  render_errors: [view: ActTogetherWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ActTogether.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
