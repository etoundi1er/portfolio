class Project < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: [:slugged, :finders, :history]
    belongs_to :category
    validates :slug, :title, presence: true, uniqueness: true

    has_attached_file :image,
                      styles: { large: '900x900>', medium: '300x300>', thumb: '100x100>' },
                      default_url: ActionController::Base.helpers.image_path('missing.gif')

    validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}

    has_attached_file :file
    do_not_validate_attachment_file_type :file

    def self.published
        where(draft: false)
    end

    def s3_expiry
        Time.zone.now.beginning_of_day.since 2.years
    end

    def next_item
        Project.where('id > ?', id).order('id ASC').first || Project.first
    end

    def prev_item
        Project.where('id < ?', id).order('id DESC').first || Project.last
    end
end
