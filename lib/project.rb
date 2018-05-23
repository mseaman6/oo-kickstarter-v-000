class Project

  attr_accessor :backers

  def initialize(title)
    @title = title
    backers = []
  end

end
