defmodule StackavWeb.Controllers.CommanallController do
  use StackavWeb, :controller

  alias Stackav.Models.Commanall
  alias StackavWeb.CommanallView
  @moduledoc """
    This is for Commanall related services.
  """

  @doc"""
    This is for commanall users list.
  """
  def getAll(conn, params) do
    result = Commanall.getAll(params)
    render(conn, CommanallView, "commanall_list.json", commanall: result)
  end
end
