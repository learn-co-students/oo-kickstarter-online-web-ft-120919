class Project
  attr_reader :backers
  attr_accessor :title

  @@all = []

  def initialize(t)
    @backers = []
    @title = t
  end

  def add_backer(b)
    if (!@backers.include?(b))
      @backers<<b
    end
    if (!b.backed_projects.include?(self))
      b.back_project(self)
    end
  end


end