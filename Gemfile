source "https://rubygems.org"

# El sitio se publica con GitHub Pages, así que usamos la misma gema que usa
# GitHub para buildear: fija Jekyll y todos los plugins en las versiones de
# producción (https://pages.github.com/versions/). Para actualizar:
#
#     bundle update github-pages
#
# Y para levantar el sitio localmente:
#
#     bundle exec jekyll serve
#
gem "github-pages", "~> 232", group: :jekyll_plugins

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-sitemap"
  gem "jemoji"
end

# Windows y JRuby no incluyen los archivos de zoneinfo
platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Mejora el watcher de directorios en Windows
gem "wdm", "~> 0.1", platforms: [:windows]

# Jekyll 3.x necesita webrick para `jekyll serve` desde Ruby 3.0
gem "webrick", "~> 1.8"
