require 'test_helper'
require 'fixtures/sample_mail'

class MailFormTest < ActiveSupport::TestCase
  test "sample mail has name and email" do
    sample = SampleMail.new
    sample.name = "User"
    sample.email = "user@email.com"

    assert_equal "User", sample.name
    assert_equal "user@email.com", sample.email
  end
  test "sample mail can clear attribuetes using clear_ prefix" do
    sample = SampleMail.new
    sample.name = "User"
    sample.email = "Email"

    sample.clear_name
    sample.clear_email
    assert_nil sample.name
    assert_nil sample.email 
  end
end
