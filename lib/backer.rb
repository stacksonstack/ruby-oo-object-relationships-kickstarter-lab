class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.map do |projects|
            if(projects.backer == self)
                projects.project
            end
        end
        projects.compact
    end

    
end
