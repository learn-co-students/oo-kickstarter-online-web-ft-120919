require "pry"
class Backer
  attr_reader :backed_projects, :name
  @@all = []
  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end
  def back_project(project)
    # project.add_backer(self)
    @backed_projects << project
    @backed_projects[-1].add_backer(self)
    # binding.pry
  end
  def associate(project)
        @backed_projects << project
  end
end
