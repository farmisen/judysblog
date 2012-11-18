require 'test_helper'

class ParagraphTest < ActiveSupport::TestCase
  test "should not save orphaned paragraph" do
    paragraph = Paragraph.new
    assert !paragraph.save
    end
end
