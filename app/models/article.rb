class Article < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders, :history]
    belongs_to :category
    validates :slug, :title, presence: true, uniqueness: true

    if Rails.env.development?
        has_attached_file :image,
                          styles: { large: '900x900>', medium: '300x300>', thumb: '100x100>' },
                          default_url: ActionController::Base.helpers.image_path('missing.gif'),
                          # :storage => :s3,
                          s3_region: ENV['AWS_REGION'],
                          bucket: 'etoundi-portfolio'
    else
        has_attached_file :image,
                          styles: { large: '900x900>', medium: '300x300>', thumb: '100x100>' },
                          default_url: ActionController::Base.helpers.image_path('missing.gif')

        validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}
    end

    def self.published
        where(draft: false)
    end

    def s3_expiry
        Time.zone.now.beginning_of_day.since 2.years
    end

    def next_item
        Article.where('id > ?', id).order('id ASC').first || Article.first
    end

    def prev_item
        Article.where('id < ?', id).order('id DESC').first || Article.last
    end
end
