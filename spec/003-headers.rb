describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has an h1 tag" do
    expect(index).to have_tag('h1')
  end
  
  it "has 'Hello World Translations' within an h1 tag" do
    expect(index).to have_tag('h1', text: 'Hello World Translations')
  end
end
