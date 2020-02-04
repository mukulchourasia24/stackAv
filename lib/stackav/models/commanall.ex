defmodule Stackav.Models.Commanall do
  import Ecto.Query

  alias Stackav.Repo
  alias Stackav.Schemas.Commanall
  @moduledoc """
    This is for commanall related apis.
  """

  @doc"""
    This is for commanall users list.
  """
  def getAll(params) do

    filtered = params
               |> Map.take(~w( employee_id company_id))
               |> Enum.map(fn {k, v} -> {String.to_atom(k), v} end)

    data = Repo.all(from c in Commanall, having: ^filtered,
                                        left_join: e in assoc(c, :employee),
                                        left_join: co in assoc(c, :company),
                                         select: %{
                                           id: c.id,
                                           company_name: co.company_name,
                                           fullname: e.fullname,
                                           employee_id: c.employee_id,
                                           company_id: c.company_id
                                         })
  end
end
