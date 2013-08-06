require 'spec_helper'

describe HasSerialized do
  before do
    reset_database
  end

  describe "accessing variables" do
    before do
      @page = Page.create!
    end

    it "should serialize with default" do
      @page.gunslinger.should be_true
    end

    it "should allow assignment" do
      @page.gunslinger = false
      @page.gunslinger.should be_false
    end
  end

  it 'should be able to initialize with defaults' do
    page = Page.new
    expect(page.gunslinger).to be_true
  end
end
