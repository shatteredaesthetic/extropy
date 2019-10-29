defmodule Extropy.Repo do
  use Ecto.Repo,
    otp_app: :extropy,
    adapter: Ecto.Adapters.Postgres
end
