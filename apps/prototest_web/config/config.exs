# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :prototest_web,
  namespace: Prototest.Web

# Configures the endpoint
config :prototest_web, Prototest.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3asaUw+Nvu4dG77VQ+J8WqwNMpe4sMK5Gdrp6NNJ6bLyVWUVFb+VDC1HDkPth1KP",
  render_errors: [view: Prototest.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Prototest.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :prototest_web, :generators,
  context_app: :prototest

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
