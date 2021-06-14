
class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pairs = ProjectBacker.all.select do |pair|
            pair.project == self
        end
        backers = pairs.map do |pair|
            pair.backer
        end
        return backers
    end

end
