require 'minitest/unit'
require 'minitest/autorun'
require './lib/sql_craft.rb'

class TestSqlCraft < MiniTest::Unit::TestCase

  def setup
    @db_name = "hoge"
    @db = SqlCraft::Database.new(@db_name)

    @tb_name = "hoga"
    @tb = SqlCraft::Table.new(@tb_name)
  end

  def test_create_scheme
    assert_equal "CREATE DATABASE #{@db_name};", @db.create
  end

  def test_drop_scheme
    assert_equal "DROP DATABASE #{@db_name};", @db.drop
  end

  def test_create_table
    @tb.add_column("id", "INT PRIMARY KEY")
    @tb.add_column("name", "VARCHAR(100)")
    @tb.add_column("email", "VARCHAR(100)")

    assert_equal "CREATE TABLE #{@tb_name} (id INT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100));", @tb.create
  end

  def test_drop_table
    assert_equal "DROP TABLE #{@tb_name};", @tb.drop
  end
end
