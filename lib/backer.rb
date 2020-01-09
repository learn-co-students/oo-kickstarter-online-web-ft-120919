class Backer
  attr_accessor :name
  attr_reader :backed_projects
  @@all = []

  def initialize(n)
    @backed_projects  = []
    @name = n
  end

  def back_project (p)
    if !@backed_projects.include?(p)
      @backed_projects<< p
    end
    if !p.backers.include?(self)
      p.add_backer(self)
    end
  end



end