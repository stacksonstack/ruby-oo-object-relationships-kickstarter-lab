class Project

    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       backers = ProjectBacker.all.map do |backers|
            if (backers.project == self)
            backers.backer
            end
        end
        backers.compact
    end
end
