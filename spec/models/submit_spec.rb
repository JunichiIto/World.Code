require 'spec_helper'

describe Submit do
  it ":description, :language, :sourceがあるときvalid" do
    submit = Submit.new(
      description: "変数strを出力",
      language: "Ruby",
      source: "puts str"
    )
    expect(submit).to be_valid
  end
  it ":descriptionがないときinvalid" do
    expect(Submit.new(description: nil)).to have(1).errors_on(:description)
  end
  it ":languageがないときinvalid" do
    expect(Submit.new(language: nil)).to have(1).errors_on(:language)
  end
  it ":sourceがないときinvalid" do
    expect(Submit.new(source: nil)).to have(1).errors_on(:source)
  end
end
