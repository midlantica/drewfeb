###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
  activate :imageoptim
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :host, '4567'

set :sass_dir, 'css'
set :scss_dir, 'css'
set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

set :site_keywords, "Drew Harper, UI/UX Designer, Front-End Coder, Interface Designer"


#----------------------------

#Folder settings
relative_assets = true      #because we're not working from the root
sass_dir = "css"    #where our .scss files are
css_dir = "css"      #where the CSS will saved
images_dir = "img"   #the folder with your images

# You can select your preferred output style here (can be overridden via the command line):
output_style = :expanded # After dev :compressed

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = true

# Obviously
preferred_syntax = :scss

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  activate :imageoptim

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

