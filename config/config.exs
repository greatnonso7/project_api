# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project_api,
  ecto_repos: [ProjectApi.Repo]

# Configures the endpoint
config :project_api, ProjectApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J9e5RSLLw21pn5Zu5KhJguB5EU5Xk0WK9d2Geu9bpxHlryvqdgQSOPvnm8Q6d6Ru",
  render_errors: [view: ProjectApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ProjectApi.PubSub,
  live_view: [signing_salt: "jCj0cZ3P"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
