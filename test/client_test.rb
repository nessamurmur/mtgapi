require "test_helper"

class ClientTest < Minitest::Test
  attr_reader :client

  def setup
    @client = Mtgapi::Client.new("testtoken")
  end

  def do_return
    ->(arg) { return arg }
  end

  def test_id_url
    assert_equal "/card/id/1", client.id_url(1)
  end

  def test_name_url
    assert_equal "/card/name/test", client.name_url("test")
  end

  def test_token_append
    assert_equal "?token=#{client.token}", client.token_append
  end

  def test_find_by
    Mtgapi::Client.stub(:get, do_return) do
      assert_equal "/card/id/1", client.find_by(:id, 1)
    end
  end
end
