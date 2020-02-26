# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :ipmajor,
  ecto_repos: [Ipmajor.Repo]

config :ipmajor_web,
  ecto_repos: [Ipmajor.Repo],
  generators: [context_app: :ipmajor]

# Configures the endpoint
config :ipmajor_web, IpmajorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZQLArF6PaPKDzyTZYhbSBfvrM0ZhQVMSPKc01FVLvNWh5oUcKpdf+YTh7MqGX3ZB",
  render_errors: [view: IpmajorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: IpmajorWeb.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "go9EL1MO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason
#for junit
config :junit_formatter,
  report_file: "report_file.xml",
  # this is imported in your app! hence the double ..
  report_dir: "../../test-reports",
  print_report_file: true,
  prepend_project_name?: true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
