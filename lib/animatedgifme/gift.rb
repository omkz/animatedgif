require 'faraday'
require 'json'

API_URL = 'https://animatedgif.me'

module AnimatedGiftMe
  class Gift
    attr_reader :id, :image_data, :url, :user_id, :created_at, :updated_at

    def initialize(attributes)
      @id = attributes['id']
      @image_data = attributes['image_data']
      @url = attributes['url']
      @user_id = attributes['user_id']
      @created_at =  attributes['created_at']
      @updated_at =  attributes['updated_at']
    end

    def self.find(id)
      response = Faraday.get("#{API_URL}/gifs/#{id}.json")
      attributes = JSON.parse(response.body)
      new(attributes)
    end
  end
end
