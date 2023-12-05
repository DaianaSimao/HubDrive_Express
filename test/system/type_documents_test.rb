require "application_system_test_case"

class TypeDocumentsTest < ApplicationSystemTestCase
  setup do
    @type_document = type_documents(:one)
  end

  test "visiting the index" do
    visit type_documents_url
    assert_selector "h1", text: "Type documents"
  end

  test "should create type document" do
    visit type_documents_url
    click_on "New type document"

    fill_in "Type document", with: @type_document.type_document
    click_on "Create Type document"

    assert_text "Type document was successfully created"
    click_on "Back"
  end

  test "should update Type document" do
    visit type_document_url(@type_document)
    click_on "Edit this type document", match: :first

    fill_in "Type document", with: @type_document.type_document
    click_on "Update Type document"

    assert_text "Type document was successfully updated"
    click_on "Back"
  end

  test "should destroy Type document" do
    visit type_document_url(@type_document)
    click_on "Destroy this type document", match: :first

    assert_text "Type document was successfully destroyed"
  end
end
