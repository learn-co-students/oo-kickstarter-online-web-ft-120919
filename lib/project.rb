# frozen_string_literal: true

# class project is initialized with title and an empty array
class Project
  attr_reader :title
  attr_accessor :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  # should add a backer to array
  def add_backer(name)
    @backers << name
    name.back_project(self) unless name.backed_projects.include?(self)
  end
end
