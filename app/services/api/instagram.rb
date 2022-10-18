module Api::Instagram
  extend NetworkApiBase

  URL = 'https://takehome.io/instagram'
  KEY = 'picture'

  def self.data
    call(URL, KEY)
  end
end
