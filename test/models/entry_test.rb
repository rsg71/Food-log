require "test_helper"

class EntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 15, calories: 430)
    assert entry.save
  end

  test "should not save entry without calories" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 15)
    assert_not entry.save
  end

  test "should not save entry without carbohydrates" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 15, calories: 430)
    assert entry.save
  end

  test "should not save entry without proteins" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 15, calories: 430)
    assert entry.save
  end

  test "should not save entry without fats" do 
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 35, proteins: 12, fats: 15, calories: 430)
    assert entry.save
  end

end
