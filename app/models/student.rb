class Student < ActiveRecord::Base

  after initialize :init

  def init
    self.active = true if (self.has_attribute? :active) && self.active.nil?
  end

  def to_s
    self.first_name + " " + self.last_name
  end
end
