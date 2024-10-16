module SqlCraft
  class Database
    def initialize(name)
      @name = name
    end

    def create
      "CREATE DATABASE #{@name};"
    end

    def drop
      "DROP DATABASE #{@name};"
    end
  end

  class Table
    def initialize(name)
      @name = name
      @columns = []
    end

    def add_column(name, type)
      @columns << "#{name} #{type}"
    end

    def create
      "CREATE TABLE #{@name} (#{@columns.join(", ")});"
    end

    def drop
      "DROP TABLE #{@name};"
    end
  end
end
