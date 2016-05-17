require 'rails_helper'

RSpec.describe Trail, type: :model do
  let(:trail) { build(:trail) }

  it 'is a valid trail' do
    expect(trail).to be_valid
  end

  describe '#name' do
    it 'must have a name' do
      trail.name = nil
      expect(trail).to_not be_valid
    end
  end

  describe '#description' do
    it 'must have a description' do
      trail.description = nil
      expect(trail).to_not be_valid
    end
  end

  describe '#distance' do
    it 'must have a distance' do
      trail.distance = nil
      expect(trail).to_not be_valid
    end
  end

  describe '#duration' do
    it 'must have a duration' do
      trail.duration = nil
      expect(trail).to_not be_valid
    end
  end

  describe '#local_number' do
    it 'must have a local_number' do
      trail.local_number = nil
      expect(trail).to_not be_valid
    end
  end
end
