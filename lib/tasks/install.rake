namespace :slim_select do
  APPLICATION_JS_PATH = Rails.root.join("app/javascript/application.js")
  IMPORTMAP_PATH = Rails.root.join("config/importmap.rb")
  APPLICATION_LAYOUT_PATH = Rails.root.join("app/views/layouts/application.html.erb")

  desc "Install Slim Select into the app with import maps"
  task :install do
    puts "Import Slim Select"
    File.write(APPLICATION_JS_PATH, "import \"slim-select\"\n", mode: "a+")

    puts "Pin Slim Select"
    File.write(IMPORTMAP_PATH, "pin \"slim-select\", to: \"slimselect.min.js\"\n", mode: "a+")

    puts "Reference CSS in layout"
    puts "Please reference the CSS at an appropriate point in your application layout:"
    puts '<%= stylesheet_link_tag "tailwind", "inter-font", "data-turbo-track": "reload" %>'
  end
end
