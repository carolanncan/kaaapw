# Blog settings

# Time.zone = "UTC"

activate :blog do |blog|
  blog.permalink = "{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  blog.sources = "posts/{year}-{month}-{day}-{title}.html"
  blog.taglink = "tags/{tag}.html"
  # blog.location = "location/{location}.html"
  blog.layout = "main"
  blog.summary_separator = /(READMORE)/
    blog.summary_length = 150
  blog.custom_collections = {
    location: {
    link: 'locations/{location}.html',
    template: 'location.html'
    }
  }

  activate :google_analytics do |ga|
      ga.tracking_id = 'UA-XXXXXXX-X' # Replace with your property ID.
  end

  blog.tag_template = "tag.html"

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false

# Helpers

activate :automatic_image_sizes
activate :livereload

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :relative_links, true
set :build_dir, 'tmp'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end

