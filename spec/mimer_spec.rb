require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Mimer" do

  it "should create a new Mimer instance with identify" do
    m = Mimer.identify(fixture_path('plain.txt'))

    expect(m).not_to be_nil
    expect(m).to be_a(Mimer)
  end

  it "should return nil if the file cannot be found" do
    m = Mimer.identify(fixture_path('does_not.exist'))

    expect(m).to be_nil
  end

  describe "text" do

    before(:each) do
      @mimer = Mimer.identify(fixture_path('plain.txt'))
    end

    it "should identify mime correctly" do
      expect(@mimer.mime_type).to match(/text\/plain/)
    end

    it "should find this text" do
      expect(@mimer).to be_text
    end
  end

  describe "image extensions" do
    it "should work for jpeg" do
      mimer = Mimer.identify(fixture_path('facepalm.jpg'))
      expect(mimer.suggested_extension).to eq(".jpg")
    end

    it "should work for gif" do
      mimer = Mimer.identify(fixture_path('google.gif'))
      expect(mimer.suggested_extension).to eq(".gif")
    end

    it "should work for png" do
      mimer = Mimer.identify(fixture_path('kirk.png'))
      expect(mimer.suggested_extension).to eq(".png")
    end
  end

  describe "image" do

    before(:each) do
      @mimer = Mimer.identify(fixture_path('facepalm.jpg'))
    end

    it "should identify mime correctly" do
      expect(@mimer.mime_type).to match(/image\/jpeg/)
    end

    it "should find this image" do
      expect(@mimer).to be_image
    end
  end
end
