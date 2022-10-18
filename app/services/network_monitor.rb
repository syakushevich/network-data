module NetworkMonitor
  def self.call
    threads = []
    threads << Thread.new { { twitter: Api::Twitter.data } }
    threads << Thread.new { { facebook: Api::Facebook.data } }
    threads << Thread.new { { instagram: Api::Instagram.data } }
    threads.map(&:value).inject(:merge)
  end
end
