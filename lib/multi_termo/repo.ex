defmodule MultiTermo.Repo do
  use Ecto.Repo,
    otp_app: :multi_termo,
    adapter: Ecto.Adapters.Postgres
end
