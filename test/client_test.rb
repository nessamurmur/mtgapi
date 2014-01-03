require "test_helper"

class ClientTest < Minitest::Test
  def setup
    @client = Mtgapi::Client.new
  end

  def test_search_returns_array_of_results
    assert @client.search("Shock").kind_of? Array
  end
end
