require 'test/unit'
require '../bot'

class TC_Bot < Test::Unit::TestCase
  def setup
  end

  def test_map_referrer_to_host
    assert_equal("hello", Bot.say())
  end
end
