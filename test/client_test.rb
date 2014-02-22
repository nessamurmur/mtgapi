require "test_helper"

class ClientTest < Minitest::Test

  def client
    Mtgapi::Client.new("testtoken")
  end

  def card_list
    [{name: "TestCard"}]
  end

  def cards
    card_list.map { |card| Mtgapi::Card.new(card) }
  end

  def do_mock
    mock = Minitest::Mock.new
    mock.expect(:parsed_response, card_list)
    ->(arg) { return mock }
  end

  def test_id_url
    assert_equal "/card/id/1", client.id_url(1)
  end

  def test_name_url
    assert_equal "/card/name/test", client.name_url("test")
  end

  def test_set_url
    assert_equal "/card/set/test", client.set_url("test")
  end

  def test_token_append
    assert_equal "?token=#{client.token}", client.token_append
  end

  def test_sets
    Mtgapi::Client.stub(:get, do_mock) do
      assert client.sets
    end
  end

  def test_find_by
    Mtgapi::Client.stub(:get, do_mock) do
      assert_equal cards, client.find_by(:id, 1)
    end
  end
end
