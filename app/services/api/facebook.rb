module Api::Facebook
  extend NetworkApiBase

  URL = 'https://takehome.io/facebook'
  KEY = 'status'

  def self.data
    call(URL, KEY)
  end
end
