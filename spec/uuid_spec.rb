require "spec_helper"

include UUIDGen

describe UUIDGen do

  it 'has a version number' do
    expect(UUIDGen::VERSION).not_to be nil
  end
end

describe UUID5 do

  it "can build with DNS name space" do
    testee = UUID5.new('aaa', NameSpaceDNS)
    expect(testee.to_s).to eq '01d2f0ce-8f47-56e4-9a9c-0f368406feb7'
  end

  it "can build with URL name space" do
    testee = UUID5.new('aaa', NameSpaceURL)
    expect(testee.to_s).to eq '23932b60-2cbd-5366-9c36-8b374f1954a5'
  end

  it "can build with OID name space" do
    testee = UUID5.new('aaa', NameSpaceOID)
    expect(testee.to_s).to eq '2849bb91-4780-5e13-aee7-45e164e36bd6'
  end

  it "can build with X500 name space" do
    testee = UUID5.new('aaa', NameSpaceX500)
    expect(testee.to_s).to eq '2fd21a62-3e57-59f0-ab5b-70c8d382d43f'
  end
end

describe UUID3 do

  it "can build with DNS name space" do
    testee = UUID3.new('aaa', NameSpaceDNS)
    expect(testee.to_s).to eq 'b6602c76-f86e-32a2-ab42-71dd055ad3cc'
  end

  it "can build with URL name space" do
    testee = UUID3.new('aaa', NameSpaceURL)
    expect(testee.to_s).to eq '97244334-fe16-3c54-9b44-e16241677b1e'
  end

  it "can build with OID name space" do
    testee = UUID3.new('aaa', NameSpaceOID)
    expect(testee.to_s).to eq '0b6ec827-961f-39ff-aa77-f5de59903acd'
  end

  it "can build with X500 name space" do
    testee = UUID3.new('aaa', NameSpaceX500)
    expect(testee.to_s).to eq 'a12a4f2e-a9e0-300e-9742-c6018c23b533'
  end
end
