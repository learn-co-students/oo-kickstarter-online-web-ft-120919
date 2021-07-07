class Backer
  attr_reader :name, :backed_projects
  
  def initalize(name)
    @name=name
    @backed_projects =[]
  end
  
  def backed_project(project)
    backed_project << project
    project.backes << self
  end
  
end