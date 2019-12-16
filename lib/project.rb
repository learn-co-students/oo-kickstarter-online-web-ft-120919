class Project
    attr_reader :title
    attr_accessor :backers 

    def initialize(title)
      @title = title 
      @backers = []
    end #init

    def add_backer(backer)
      @backers << backer 
      backer.back_project(self) unless backer.backed_projects.include?(self)
    end #add_backer

end #class