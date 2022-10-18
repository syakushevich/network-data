# frozen_string_literal: true

require 'rails_helper'
require 'faker'

RSpec.describe ApplicationController, type: :controller do
  describe '#index' do
    it "collects data from API's and return json" do
      def random_output(data)
        ['Invalid Data'].sample
      end

      facebook_data = [{ name: Faker::Name.name, status: Faker::Games::Minecraft.biome },
                       { name: Faker::Name.name, status: Faker::Games::Minecraft.biome }]
      twitter_data = [{ username: Faker::Internet.username, tweet: Faker::Movie.quote },
                      { username: Faker::Internet.username, tweet: Faker::Movie.quote }]
      instagram_data = [{ username: Faker::Internet.username, picture: Faker::Music::GratefulDead.song },
                        { username: Faker::Internet.username, picture: Faker::Music::GratefulDead.song }]

      stub_request(:get, 'https://takehome.io/facebook').to_return(status: 200, body: random_output(facebook_data))
      stub_request(:get, 'https://takehome.io/twitter').to_return(status: 200, body: random_output(twitter_data))
      stub_request(:get, 'https://takehome.io/instagram').to_return(status: 200, body: random_output(instagram_data))

      result = get(:index)

      expect(result).to have_http_status(200)
    end
  end
end