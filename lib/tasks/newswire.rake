require 'json'
require 'open-uri'
require 'logger'

namespace :newswire do 
  desc "load data from test json file"
  task :test => :environment do |t|
    test
  end
  
  desc "grab data using the nytimes api"
  task :collect => :environment do |t|
    collect
  end
  
  desc "empty the database tables"
  task :empty_all_tables => :environment do |t|
    empty_all_tables
  end
end

def empty_all_tables
  NewsItem.destroy_all
  puts "all tables are emptied"
end

def save_news_items json_data, log_file = 'log/collect.log'
  log = Logger.new(log_file)
  log.info Time.now.to_s + " => collect started: total news items: "+ NewsItem.count.to_s
  news_items = JSON.parse json_data
  news_items["results"].each {|n|
    if not NewsItem.exists? n["id"]
      media_items = n["media"]
      related_urls = n["related_urls"]
      n.delete "media"         # delete from n to make 'NewsItems.new n' work
      n.delete "related_urls"  # save as above
      news_item = NewsItem.new n
      news_item.id = n["id"] # id needs to be forced, it's not standard integer
      news_item.related_urls =  related_urls.collect {|url|
        RelatedUrl.new url
      }
      news_item.media_items = media_items.collect{|m|
        media_metadata_items = m["media-metadata"]
        m.delete "media-metadata"  # delete from m to make MediaItem.new m work
        media_item = MediaItem.new m
        media_item.media_metadata_items = media_metadata_items.collect{|mi|
          mm = MediaMetadataItem.new mi
        }
        media_item
      }
      news_item.save
      log.info "  news_item item saved: " + news_item.id.to_s      
    else
      log.info "  news_item item skipped: " + n["id"].to_s
    end
  }
  log.info Time.now.to_s + " => collect ended: total news items: "+ NewsItem.count.to_s
end

def collect
  api_key = "put your API key here"
  limit = 20
  format = "json"  # coule be json or xml
  url = "http://api.nytimes.com/svc/news/v2/all/recent.#{format}?api-key=#{api_key}&limit=#{limit.to_s}"
  open(url) {|f|
    json_data = f.read
    save_news_items json_data
  }
end

def test
  f = File.open "test/data/nyt-recent.json", "r"
  json_data = f.read
  save_news_items json_data, 'log/test.log'
end