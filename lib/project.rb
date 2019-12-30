

class Project
  
  attr_reader :backers, :title
  
  def initialize(title)
    @backers = []
    @title = "Project With So Much Amaze"
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
  
end