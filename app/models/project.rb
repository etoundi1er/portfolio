class Project < ActiveRecord::Base
    has_attached_file :image,
                      styles: { large: '900x900>', medium: '300x300>', thumb: '100x100>' },
                      default_url: ActionController::Base.helpers.image_path('missing.gif')

    validates_attachment_content_type :image, content_type: %r{\Aimage\/.*\Z}

    has_attached_file :file
    do_not_validate_attachment_file_type :file
    validates :slug, :title, presence: true

    def s3_expiry
        Time.zone.now.beginning_of_day.since 2.years
    end

    # Pretty URL as explained http://blog.teamtreehouse.com/creating-vanity-urls-in-rails
    def to_param
        slug
    end

    def next_item
        Project.where('id > ?', id).order('id ASC').first || Project.first
    end

    def prev_item
        Project.where('id < ?', id).order('id DESC').first || Project.last
    end
end
