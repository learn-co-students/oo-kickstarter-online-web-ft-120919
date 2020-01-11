class Project 

    attr_accessor :title, :backers 

   

    def initialize(title)
        @title = title 
        @backers = []
    end 

    def add_backer(backer)
        steven = Project.new(backer)
        @backers << backer
        @backers
        backer.backed_projects << self 
        backer.backed_projects
    end 



    #     describe 'Backer - #back_project' do
#   it 'accepts a Project as an argument and stores it in a backed_projects array' do
#     spencer = Backer.new("Spencer")
#     magic = Project.new("Magic The Gathering Thing")

#     # If we are calling this method in this way, what type of argument is it taking?
#     # We are actually passing in a Project object! Cool, huh?
#     spencer.back_project(magic)
#     expect(spencer.backed_projects).to include(magic)
#   end



end 