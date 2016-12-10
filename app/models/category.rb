class Category < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders, :history]
    has_many :articles, dependent: :destroy
    has_many :projects, dependent: :destroy
    validates :slug, :title, presence: true, uniqueness: true

    def self.project_group
        where(group: 0)
    end

    def self.article_group
        where(group: 1)
    end

    def objects
        return articles if articles.any?
        projects
    end

    def article?(obj)
        true if obj.class.name == 'Article'
    end
end
