defmodule Phoenix101.Repo do
  use Ecto.Repo,
    otp_app: :phoenix101,
    adapter: Ecto.Adapters.Postgres
end
