module SqlCraft
  class Database
    def initialize(name)
      @name = name
    end

    def create
      "CREATE DATABASE #{@name}"
    end

    def drop
      "DROP DATABASE #{@name}"
    end
  end
end
