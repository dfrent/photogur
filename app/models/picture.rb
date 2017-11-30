class Picture < ApplicationRecord

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  ##-----------------------------------------------##
  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.created_less_than_amonth_ago
    where("created_at > ?", (Time.now - 2678400))
  end

  def self.created_more_than_amonth_ago
    where("created_at < ?", (Time.now + 2678400))
  end

  def self.created_after(time)
    Picture.where("created_at > ?", time)
  end


end
