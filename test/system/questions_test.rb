require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # endnd

  test "visting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask!"
    assert_text "I don't care, get dressed and go to work!"
  end

  test "including a question mark does yields 'silly question'" do
    visit ask_url
    fill_in "question", with: "Am I going to work?"
    click_on "Ask!"
    assert_text "Silly question"
  end
end
