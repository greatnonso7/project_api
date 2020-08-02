defmodule ProjectApi.Repo do
  use Ecto.Repo,
    otp_app: :project_api,
    adapter: Ecto.Adapters.Postgres
end
