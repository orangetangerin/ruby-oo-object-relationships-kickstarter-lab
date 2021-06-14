
class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pairs = ProjectBacker.all.select do |pair|
            pair.backer == self
        end
        projects = pairs.map do |pair|
            pair.project
        end
        return projects
    end

end
