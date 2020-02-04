defmodule Stackav.Schemas.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "company" do
    field :address, :string
    field :company_name, :string

    has_many :commanall, Stackav.Schemas.Commanall
    timestamps()
  end

  @doc """
    This changeset is for add company.
  """
  def changeset(company, attrs) do
    company
    |> cast(attrs, [:company_name, :address])
    |> validate_required([:company_name, :address])
    |> cast_assoc(:commanall)
  end
end
