require 'rubygems'
require 'httparty'

class Bloomberg
    include HTTParty
    base_uri "https://www.bloomberg.com/markets"

    def posts
        self.class.get('/posts.json')
      end
    end

    bloomberg_resty = Bloomberg.new
    puts bloomberg_resty.posts
