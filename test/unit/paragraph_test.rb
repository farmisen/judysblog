require 'test_helper'

class BlockTest < ActiveSupport::TestCase
  test "should not save orphaned block" do
    block = Block.new
    assert !block.save
    end
end
