require "./lib/linked_list"
require "minitest/autorun"
require "minitest/pride"

class LinkedListTest < Minitest::Test
  def test_list_equals_LinkedList
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_head_of_list_is_nil
    list = LinkedList.new
    assert_equal nil, list.head.data
  end

  def test_find_tail
    list = LinkedList.new
    assert_equal nil, list.head.next_node
  end

  def test_append_a_sound
    list = LinkedList.new
    list.append("deep")
    assert_equal "deep", list.head.data
  end

  def test_count_of_list
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_list_to_a_string
   list = LinkedList.new
   list.append("doop")
   assert_equal "doop", list.to_string
 end

  def test_append_round_two
    list = LinkedList.new
    list.append("deep")
    assert_equal "deep", list.head.data
  end

  def test_append_round_three
    list = LinkedList.new
    list.append("plop")
    assert_equal "plop", list.head.data
  end

  def test_prepend_a_sound
    list = LinkedList.new
    list.prepend("dop")
    assert_equal "dop", list.head.data
  end


end
