defmodule Stackav.Repo.Migrations.CreateStatus do
  use Ecto.Migration

  def change do
    create table(:status) do
      add :"", :string

      timestamps()
    end

  end
end
