class CreateFriendlyIdSlugs < ActiveRecord::Migration
    def change
        create_table :friendly_id_slugs do |t|
            t.string   :slug,           null: false
            t.integer  :sluggable_id,   null: false
            t.string   :sluggable_type, limit: 50
            t.string   :scope
            t.datetime :created_at
        end
        add_index :friendly_id_slugs, :sluggable_id
        add_index :friendly_id_slugs, [:slug, :sluggable_type]
        add_index :friendly_id_slugs, [:slug, :sluggable_type, :scope], unique: true
        add_index :friendly_id_slugs, :sluggable_type

        remove_column :projects, :category, :string
        rename_column :projects, :period, :location
        add_column :categories, :group, :integer, default: 0

        reversible do |dir|
            dir.up do
                Article.all.each do |article|
                    article.update_column(:published_on, article.created_at)
                end
            end
        end
    end
end
