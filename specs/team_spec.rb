require('minitest/autorun')
require('minitest/rg')
require('../team.rb')

class TeamTest < MiniTest::Test

def test_get_name
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal("Glasgow Gosberries", team.name)
end

def test_get_players
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal(["Bob", "Greg", "Frank"], team.players)
end

def test_get_coach
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal("Big Dave", team.coach)
end

def test_new_coach
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  team.coach="Bigger Dave"
  assert_equal("Bigger Dave", team.coach)
end

def test_add_player
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  team.add_player("Matt")
  assert_equal(["Bob", "Greg", "Frank", "Matt"], team.players)
end

def test_check_player__true
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal(true, team.check_player("Frank"))
end


def test_check_player__false
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal(false, team.check_player("Gary"))
end

def test_win_points
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal(1, team.win)
end

def test_win_points_other
  team = Team.new("Edinburgh Elderflowers", ["Tarquin", "William", "Percibald"], "Large Leopold")
  assert_equal(1, team.win)
end


end
