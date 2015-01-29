require 'rspec'
require_relative '../lib/suushiki'

describe Suushiki do
  describe '.exec' do
    subject { Suushiki.exec "4*5+6&7|8" }
    it { should eq 44 }
  end
end
