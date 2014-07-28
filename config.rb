# https://github.com/middleman/middleman/issues/841
# https://github.com/middleman/middleman-minify-html

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
# with_layout :file_browser do
#   page "/files/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Pretty URLs (ie about.html.erb => about/index.html)
activate :directory_indexes

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
helpers do

  # Returns all pages under a certain directory.
  # -> https://github.com/Aupajo/example-for-shalako/tree/master/source
  # -> http://forum.middlemanapp.com/t/children-of-a-specified-directory/903/3
  def sub_pages(dir)  
    sitemap.resources.select do |resource|
      resource.path.start_with?(dir)
    end
  end

  # Add an "active" class to links if they point to the current url
  # -> http://stackoverflow.com/questions/14658054/rails-and-haml-how-to-add-id-and-class-selectors-to-link-to-helper
  # -> https://github.com/middleman/middleman/issues/303
  def nav_link_to(link, url, opts={})
    if current_resource.url == url_for(url)
      opts[:class] << " active"
    end
    link_to(link, url, opts)
  end

end

set :site_title, 'Volarre'

set :markdown_engine, :redcarpet
set :markdown, :smartypants => true

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

# Add bower's directory to sprockets asset path
# -> use bundler for back-end dependencies, bower for front-end dependencies
# -> http://dejimata.com/2013/11/4/bundler-meet-bower
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

# Build-specific configuration
configure :build do
  # Change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

   # Minify HTML on build
  activate :minify_html

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end