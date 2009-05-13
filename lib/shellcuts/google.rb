require 'rubygems'
require 'scrubyt'
require 'nokogiri'
require 'uri'

module Shellcuts
  class Google
    
    def self.define(query, max_results = 1)
      query_url = URI.encode("http://www.google.com/search?q=define:#{query}")
      
      data = Scrubyt::Extractor.define do
        fetch query_url
        
        item "//div[@class=med]" do    
          text  "//li"
        end
      end
      
      doc = Nokogiri::HTML.parse(data.to_xml)
      results = doc.xpath('//root//text').to_a
      
      puts
      puts "Definitions of \"#{query}\" on the Web:"
      puts
      if results && !results.empty?
        results.slice(0..(max_results - 1)).each do |item|
          puts "  * #{item.content}"
          puts
        end
      else
        puts "  No definitions found."
      end
    end
    
  end
end