require "./lib/node"
require "minitest/autorun"
require "minitest/pride"

class NodeTest < Minitest::Test

  def test_a_node_can_be_created
    node = Node.new("plop")
    assert_equal Node, node.class
    assert_equal "plop", node.data
  end

  def test_can_hold_other_data
    node = Node.new("Jennifer Lawrence")

    assert_equal "Jennifer Lawrence", node.data
  end

  def test_next_node_is_nil_by_default
    node = Node.new("Jason Conrad")

    assert_equal nil, node.next_node
  end
end
