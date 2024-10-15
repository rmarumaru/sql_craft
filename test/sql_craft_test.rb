require 'minitest/unit'
require 'minitest/autorun'
require './lib/sql_craft.rb'

class TestSqlCraft < MiniTest::Unit::TestCase

  def setup
    @db_name = "hoge"
    @db = SqlCraft::Database.new(@db_name)
  end

  def test_create
    assert_equal "CREATE DATABASE #{@db_name}", @db.create
  end

  def test_drop
    assert_equal "DROP DATABASE #{@db_name}", @db.drop
  end

end
