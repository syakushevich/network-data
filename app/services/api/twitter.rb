module Api::Twitter
  extend NetworkApiBase

  URL = 'https://takehome.io/twitter'
  KEY = 'tweet'

  def self.data
    call(URL, KEY)
  end
end
