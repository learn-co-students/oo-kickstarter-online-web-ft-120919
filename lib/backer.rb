# frozen_string_literal: true

# classs backer is inititalized with name and empty array
class Backer
  attr_reader :name
  attr_accessor :backed_projects
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(title)
    @backed_projects << title
    title.add_backer(self) unless title.backers.include?(self)
  end
end
