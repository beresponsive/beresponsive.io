require 'builder'

###
# Compass
###

# Susy grids in Compass
#require 'susy'

##############################
# Development config
configure :development do
  # Livereload
  activate :livereload

  activate :google_analytics do |ga|
    ga.tracking_id = false
  end
end

##############################
# Helpers
require 'config/routes'
require 'config/helpers'
#require 'builder'

helpers do
  include RouteHelpers
  include ApplicationHelpers
end


##############################
# Pages
page "*", :layout => "application" 

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'



# Build-specific configuration
configure :build do
  # Activate google-analytics extension
  activate :google_analytics do |ga|
    ga.tracking_id = 'UA-41620212-1'
  end

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end