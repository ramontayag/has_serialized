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

  it 'should be able to override certain defaults during instantiation' do
    page = Page.new(gunslinger: 'Roland', jake: false)
    expect(page.gunslinger).to eq('Roland')
    expect(page.lowmen).to be_true
    expect(page.jake).to eq(false)
  end
end
