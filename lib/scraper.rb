require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

def get_page 
  doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
binding.pry 
end 
end 
Scraper.new._get_page

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
end



