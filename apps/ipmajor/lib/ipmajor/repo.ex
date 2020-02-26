defmodule Ipmajor.Repo do
  use Ecto.Repo,
    otp_app: :ipmajor,
    adapter: Ecto.Adapters.Postgres
end
