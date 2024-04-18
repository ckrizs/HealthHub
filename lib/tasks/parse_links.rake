namespace :parse do
  desc "Parse links from a webpage and save them to the database"
  task :links => :environment do
    require 'open-uri'
    require 'nokogiri'

    # URL, який будемо парсити
    url = "https://www.newsweek.com/rankings/worlds-best-hospitals-2023"

    # Отримання HTML-сторінки
    html = open(url)

    # Парсинг HTML за допомогою Nokogiri
    doc = Nokogiri::HTML(html)

    # Отримання всіх посилань з сторінки
    links = doc.css('a').map { |link| link['href'] }

    # Збереження посилань у базу даних
    links.each do |link_url|
      Link.create(url: link_url)
    end

    puts "Saved #{links.count} links to the database."
  end
end
