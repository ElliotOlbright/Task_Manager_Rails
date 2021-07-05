require 'rails_helper'

RSpec.describe Task do #type: :model optional
  describe 'instance methods' do 
    describe '#laundry?' do 
      it "returns true if the task title is 'laundry'" do 
        task = Task.create!(title: 'laundry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)
      end 
  
      it "returns false if the task title is not 'laundry'" do 
        task = Task.create!(title: 'gucci', description: 'clean the clothes')

        expect(task.laundry?).to be(false)
      end 

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'gucci', description: 'clean the clothes')

        expect(task.laundry?).to be(false)
      end 

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'gucci laundry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)

      end 

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'gucci laUNdry', description: 'clean the clothes')

        expect(task.laundry?).to be(true)
      end 

      it 'returns true when the description contains the word laundry' do
        task = Task.create!(title: 'gucci laundry', description: 'clean the laundry')

        expect(task.laundry?).to be(true)
      end 

      it 'is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'gucci laUNdry', description: 'clean the LaUnDrY')

        expect(task.laundry?).to be(true)
      end 
    end



  end 

end 