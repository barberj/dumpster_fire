defmodule DumpsterFire.Repo do
  use Ecto.Repo,
    otp_app: :dumpster_fire,
    adapter: Ecto.Adapters.Postgres
end
