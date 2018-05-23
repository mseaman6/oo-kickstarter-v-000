class Project

  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    unless backer.backed_projects.include?(self)
      backer.back_project(self)
    end
  end

end
