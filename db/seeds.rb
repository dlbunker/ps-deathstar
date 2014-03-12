# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ds = DeathStar.create(name: 'Death Star I', inception_date: Time.now, circumference: 377.5, area: 45300.96)

iron = Metal.create(type: "Iron", density: 7.874, melting_point: 1538, hardness: 4, cost: 7.2)
tungsten = Metal.create(type: "Tungsten", density: 19.25, melting_point: 3422, hardness: 7.5, cost: 47.50)
titanium = Metal.create(type: "Titanium", density: 4.506, melting_point: 1668, hardness: 6, cost: 25.00)

r1 = Room.create(death_star_id: ds.id, metal_id: tungsten.id, name: "Conference Room A", color: 'Black', size: 50, x: 2, y: 4, z: 3)
r2 = Room.create(death_star_id: ds.id, metal_id: tungsten.id, name: "Emperer's Throne Room", color: 'Grey', size: 200, x: 200, y: 150, z: 1)
r3 = Room.create(death_star_id: ds.id, metal_id: tungsten.id, name: "Darth Vador's Quarters", color: 'White', size: 100, x: -30, y: -25, z: -50)
r4 = Room.create(death_star_id: ds.id, metal_id: titanium.id, name: "Garbage Disposal 24", color: 'Silver', size: 10, x: -36, y: 35, z: -20)
r5 = Room.create(death_star_id: ds.id, metal_id: titanium.id, name: "Prison Cell 210", color: 'Red', size: 5, x: 44, y: 2, z: 2)
r6 = Room.create(death_star_id: ds.id, metal_id: iron.id, name: "Tractor Beam Room 3", color: 'Black', size: 20, x: 200, y: 200, z: 100)

p1 = Port.create(death_star_id: ds.id, metal_id: iron.id, name: "Southern Port 23", landing_pads: 25, size: 50000, x: -30, y: 20, z: -200)
p2 = Port.create(death_star_id: ds.id, metal_id: iron.id, name: "Equator Port 5", landing_pads: 1, size: 500, x: 300, y: 3000, z: 0)
p3 = Port.create(death_star_id: ds.id, metal_id: iron.id, name: "Emperer's Port", landing_pads: 5, size: 10000, x: -300, y: 0, z: 0)

r1 = Reactor.create(death_star_id: ds.id, metal_id: titanium.id, name: "Core Reactor 1", power_output: 500000, x: 0, y: 0, z: 0)
r1 = Reactor.create(death_star_id: ds.id, metal_id: titanium.id, name: "Core Reactor 2", power_output: 500000, x: 0, y: 0, z: 0)
r1 = Reactor.create(death_star_id: ds.id, metal_id: titanium.id, name: "Core Reactor 3", power_output: 500000, x: 0, y: 0, z: 0)
r1 = Reactor.create(death_star_id: ds.id, metal_id: titanium.id, name: "Core Reactor 4", power_output: 500000, x: 0, y: 0, z: 0)
r1 = Reactor.create(death_star_id: ds.id, metal_id: titanium.id, name: "Core Reactor 5", power_output: 500000, x: 0, y: 0, z: 0)

w1 = WorkOrder.create(name: "Carpeting for Conference Room", date_started: Time.now.month - 1, date_complete: Time.now, price: 250, workable_id: r1.id, workable_type: "Room")
w2 = WorkOrder.create(name: "Plumbing for Darth's Bathroom", date_started: Time.now, date_complete: nil, price: 344.50, workable_id: r3.id, workable_type: "Room")
w3 = WorkOrder.create(name: "Drywall and Paint in Darth's Bathroom", date_started: Time.now, date_complete: nil, price: 344.50, workable_id: r3.id, workable_type: "Room")
