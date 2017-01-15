class AddSlugToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :slug, :string
  end
end
