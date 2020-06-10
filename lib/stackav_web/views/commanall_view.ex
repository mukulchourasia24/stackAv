defmodule StackavWeb.CommanallView do
  use StackavWeb, :view


  alias StackavWeb.CommanallView
  @moduledoc """
    This is commanall view.
  """

  @doc"""
    This is for commanall view.
  """
  def render("commanall_list.json", %{commanall: commanall}) do
    %{status_code: "200", data: render_many(commanall, CommanallView, "comman_view.json")}
  end

  @doc"""
    This is for commanll list details.
  """
  def render("comman_view.json", %{commanall: commanall}) do
    %{
      id: commanall.id,
      company_name: commanall.company_name,
      fullname: commanall.fullname,
      employee_id: commanall.employee_id,
      company_id: commanall.company_id
    }
  end
end
