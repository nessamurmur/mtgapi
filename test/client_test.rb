require "test_helper"

class ClientTest < Minitest::Test
  attr_reader :client

  def setup
    @client = Mtgapi::Client.new("testtoken")
  end

  def test_id_url
    assert_equal "id/1?token=#{client.token}", client.id_url(1)
  end

  def test_search_url
    assert_equal "/search/test?token=#{client.token}", client.search_url("test")
  end

  def test_find_by
    client.stub(:id_url, true) do
      assert client.find_by(:id, 1)
    end
    assert_equal "id/1?token=#{client.token}", client.find_by(:id, 1)
  end

  def test_search
    Mtgapi::Client.stub(:get, ->(arg) { return arg }) do
      assert_equal client.search_url("test"), client.search("test")
    end
  end
end
