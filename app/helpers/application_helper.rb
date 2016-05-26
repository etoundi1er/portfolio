module ApplicationHelper
 def logged_in?
   not request.authorization.nil?
 end
 
 # methods that change the page background color on the <html> tag and the #page-wrap id
 def page_wrapper
  if current_page?('/')
   @page_grad = "gradient-home"
  else
    @page_grad = "gradient"
  end
  
  # This allows to change the background on individual articles, but then it creates routing issues when on any other page
  # if current_page?(article_path(@article))
  #  @page_grad = "articles-bg"
  # else
  #  @page_grad = "gradient"
  # end
 end
 
 #page background image for home page
 def page_bg
  if current_page?('/')
   @bg_image = "bg-image"
  else
   @bg_image = "none"
  end
 end
 
 # Page viewheight for homepage
 def page_vh
  if current_page?('/')
   @pg_vh = "home"
  else
   @pg_vh = " "
  end
 end
 
  # Page title help as explained here http://nithinbekal.com/posts/rails-page-titles/
 def title(text)
   content_for :title, text
 end
 
 def meta_tag(tag, text)
   content_for :"meta_#{tag}", text
 end

 def yield_meta_tag(tag, default_text='')
   content_for?(:"meta_#{tag}") ? content_for(:"meta_#{tag}") : default_text
 end
  
end
