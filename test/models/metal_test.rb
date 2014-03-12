require 'test_helper'

class MetalTest < ActiveSupport::TestCase
  test "should not save metal without proper data" do
    metal = Metal.new
    assert !metal.save
  end

  test "iron should have validation issues" do
    iron = Iron.new
    assert !iron.save
  end

  test "iron should save" do
    iron = Iron.new
    iron.density = 1.2
    iron.cost = 44
    assert iron.save
  end
  
  test "single table inheritance" do
    iron = Iron.new
    iron.density = 1.2
    iron.cost = 44
    assert iron.save
    
    metal = Metal.find iron.id
    assert metal.type == "Iron"
    assert metal.instance_of?(Iron)

    t = Titanium.new
    t.density = 3.4
    t.cost = 50
    assert t.save

    metal = Metal.find t.id
    assert metal.type == "Titanium"
    assert metal.instance_of?(Titanium)

    tung = Tungsten.new
    tung.density = 0.99
    tung.cost = 110
    assert tung.save

    metal = Metal.find tung.id
    assert metal.type == "Tungsten"
    assert metal.instance_of?(Tungsten)
    
    Metal.all.each do |m|
      assert ["Iron", "Tungsten", "Titanium", nil].include? m.type
    end
  end
  
end
