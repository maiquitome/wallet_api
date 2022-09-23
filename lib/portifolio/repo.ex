defmodule Portifolio.Repo do
  use Ecto.Repo,
    otp_app: :portifolio,
    adapter: Ecto.Adapters.Postgres
end
