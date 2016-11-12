require 'rubygems'
require 'httparty'

class Bloomberg
    include HTTParty
    base_uri "http://api.bloomberg.com/"

    def posts
        self.class.get('/posts.json')
      end
    end

    bloomberg_resty = Bloomberg.new
    puts bloomberg_resty.posts
