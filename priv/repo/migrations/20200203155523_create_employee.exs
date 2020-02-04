defmodule Stackav.Repo.Migrations.CreateEmployee do
  use Ecto.Migration

  def change do
    create table(:employee) do
      add :fullname, :string
      add :"", :string
      add :address, :string
      add :"", :string

      timestamps()
    end

  end
end
