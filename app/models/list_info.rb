class ListInfo
  attr_accessor :count

  def initialize(list)
    self.count = (list and list.respond_to? :count) ? list.count : 0
  end

  def valid?
    true
  end
end