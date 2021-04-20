require "nokogiri"
require "open-uri"
require "pry"
require_relative "./gpu.rb"

class Parser

    def self.scrape_GPU_List
        #Site to be scraped for information
        site = "https://www.microcenter.com/category/4294966937/video-cards"
        #Html document to be read by nokogirir
        html = URI.open(site)
        doc = Nokogiri::HTML(html).css("div#contentResults article#productGrid ul li.product_wrapper")
        doc.each do |item|
            details = item.css("div.detail_wrapper")
            prices  = item.css("div.price_wrapper")

            item_name   = details.css("div.pDescription div.normal h2 a").text.strip
            product_id  = details.css("p.sku").text.strip.split(" ")[1]
            stock_quantity = details.css("div.stock").text.strip
            price = prices.css("div.price").text.strip
            link = details.css("div.pDescription div.normal h2 a").map { |l| l["href"]}

            gpu = {
                :name => item_name,
                :id => product_id,
                :quantity => stock_quantity,
                :price => price,
                :link => link
            }
            GPU.new(gpu)
        end
    end
end