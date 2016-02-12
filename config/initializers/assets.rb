# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Dir.glob("vendor/assets/javascripts*.js").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/stylesheets/*.css").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/fonts/*.eot").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/fonts/*.svg").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/fonts/*.ttf").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/fonts/*.woff").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
Dir.glob("vendor/assets/fonts/*.woff2").each do |name|
  Rails.application.config.assets.precompile << File.basename(name)
end
