defmodule Prototest.Application do
  @moduledoc """
  The Prototest Application Service.

  The prototest system business domain lives in this application.

  Exposes API to clients such as the `Prototest.Web` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      
    ], strategy: :one_for_one, name: Prototest.Supervisor)
  end
end
