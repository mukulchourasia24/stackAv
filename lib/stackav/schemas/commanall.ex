defmodule Stackav.Schemas.Commanall do
  use Ecto.Schema
  import Ecto.Changeset

  schema "commanall" do
    field :status, :string
    field :email, :string

    belongs_to :company, Stackav.Schemas.Company
    belongs_to :employee, Stackav.Schemas.Employee
    timestamps()
  end

  @doc """
    This is for add in Commanall.
  """
  def changeset(commanall, attrs) do
    commanall
    |> cast(attrs, [:status, :email])
    |> validate_required([:email])
    |> foreign_key_constraint(:company, name: :fk_company_id)
    |> foreign_key_constraint(:employee, name: :fk_employee_id)
  end
end
