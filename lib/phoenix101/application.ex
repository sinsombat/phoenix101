defmodule Phoenix101.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Phoenix101.Repo,
      # Start the endpoint when the application starts
      Phoenix101Web.Endpoint,
      # Starts a worker by calling: Phoenix101.Worker.start_link(arg)
      # {Phoenix101.Worker, arg},
      Phoenix101Web.Presence,
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phoenix101.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    Phoenix101Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
