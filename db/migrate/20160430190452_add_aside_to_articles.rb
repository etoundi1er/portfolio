class AddAsideToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :aside, :boolean, null: false, default: false
  end
end
