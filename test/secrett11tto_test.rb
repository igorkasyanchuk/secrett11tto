require "test_helper"

class Secrett11ttoTest < ActiveSupport::TestCase

  test "works" do
    [
      "John Smith",
      "ikasyan",
      "<script>alert(1)></script>",
      "hello world this is a test string",
    ].each do |str|
      assert_not_equal str.secretify, str

      puts "#{str}       >>>>>>>>>>>      #{str.secretify}"
      puts '-' * 120
    end
  end

end
