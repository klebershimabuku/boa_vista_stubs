require 'rails_helper'

RSpec.describe BoaVistaStubs::Document::Response::Base do
  subject(:instance) { described_class.new }

  describe '#read_layout' do
    let(:file) { File.read('spec/fixtures/layout.txt') }

    it 'returns the layout from the fixture file' do
      expect(BoaVista::Fixtures).to receive(:read).with('layout_10.txt') { file }
      instance.read_layout('10')
    end
  end

  describe '#log' do
    it 'returns a formatted message' do
      expect(Rails.logger).to receive(:info).with('[BoaVistaStubs] - testing log')
      instance.log('testing log')
    end
  end
end
