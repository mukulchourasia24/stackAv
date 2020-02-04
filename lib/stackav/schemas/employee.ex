defmodule Stackav.Schemas.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employee" do
    field :address, :string
    field :fullname, :string

    has_many :commanall, Stackav.Schemas.Commanall
    timestamps()
  end

  @doc """
    This is for add employee.
  """
  def changeset(employee, attrs) do
    employee
    |> cast(attrs, [:fullname, :address])
    |> validate_required([:fullname, :address])
    |> cast_assoc(:commanall)
  end
end
