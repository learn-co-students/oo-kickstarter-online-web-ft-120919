class Project
    attr_accessor :backers
    attr_reader :title

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer_object)
        @backers << backer_object
        backer_object.backed_projects << self
    end
end