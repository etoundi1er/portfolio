class AddFriendlyId < ActiveRecord::Migration
    def change
        create_table :categories do |t|
            t.string :title
            t.string :slug
            t.text :description
        end

        add_column :articles, :slug, :string
        add_column :articles, :published_on, :date
        add_column :articles, :draft, :boolean, default: true

        add_column :projects, :published_on, :date
        add_column :projects, :draft, :boolean, default: true

        add_index :articles, :slug, unique: true
        add_index :categories, :slug, unique: true

        add_reference :articles, :category
        add_reference :projects, :category
    end
end
