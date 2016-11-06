module ApplicationHelper
    def logged_in?
        !request.authorization.nil?
    end

    # methods that change the page background color on the <html> tag and the #page-wrap id
    def page_wrapper
        @page_grad = current_page?('/') ? 'gradient-home' : 'gradient'
    end

    # page background image for home page
    def page_bg
        @bg_image = current_page?('/') ? 'bg-image' : ''
    end

    # Page viewheight for homepage
    def page_vh
        @pg_vh = current_page?('/') ? 'home' : ''
    end

    # Page title help as explained here http://nithinbekal.com/posts/rails-page-titles/
    def title(text)
        content_for :title, text
    end

    def meta_tag(tag, text)
        content_for :"meta_#{tag}", text
    end

    def yield_meta_tag(tag, default_text = '')
        content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
    end
end
