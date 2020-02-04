defmodule Stackav.Repo.Migrations.CreateCompany do
  use Ecto.Migration

  def change do
    create table(:company) do
      add :company_name, :string
      add :"", :string
      add :address, :string
      add :"", :string

      timestamps()
    end

  end
end
