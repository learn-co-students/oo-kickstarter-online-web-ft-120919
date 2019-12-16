class Backer
    attr_reader :name, :backed_projects 

    def initialize(name)
      @name = name 
      @backed_projects = []
    end #init

    def back_project(project)
      backed_projects << project 
      project.add_backer(self)
    end #back_project

end #class 