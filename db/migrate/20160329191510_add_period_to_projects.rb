class AddPeriodToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :period, :string
  end
end
