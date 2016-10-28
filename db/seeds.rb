user1 = User.create!(email: 'dan@dan.edu', password: 'password')
user2 = User.create!(email: 'Dave@Dave.edu', password: 'password')
user3 = User.create!(email: 'Benedict@Benedict.edu', password: 'password')

student1 = Student.create!(first_name: 'Dan', last_name: 'Dobrick', devise_id: user1.id, is_crasher: true, is_host: false, school: 'Hard Knocks', crashable: true, zip: 60640)
student2 = Student.create!(first_name: 'Dave', last_name: 'Nestoff', devise_id: user2.id, is_crasher: true, is_host: true, school: 'School of Rock', crashable: true, crashable_type: 'Bedroom', zip: 44070, hosting_zip: 44070)
student3 = Student.create!(first_name: 'Benedict', last_name: 'Schurwanz', devise_id: user3.id, is_crasher: true, is_host: true, school: 'The Derek Zoolander Center For Kids Who Can\'t Read Good And Wanna Learn To Do Other Stuff Good Too', crashable: true, crashable_type: 'Couch', zip: 60640, hosting_zip: 60640)

crash1 = Crash.create!(date: Time.now, item_for_exchange: '$5 DBC Gift Card', host_id: student2.id, crasher_id: student1.id, accepted: false)
crash2 = Crash.create!(date: Time.now, item_for_exchange: '$10 Starbucks Gift Card', host_id: student2.id, crasher_id: student1.id, accepted: true)

crash3 = Crash.create!(date: Time.now, item_for_exchange: 'Walk your Dog', host_id: student3.id, crasher_id: student1.id, accepted: true)
crash4 = Crash.create!(date: Time.now, item_for_exchange: 'Teach guitar lessons', host_id: student2.id, crasher_id: student3.id, accepted: true)

crash5 = Crash.create!(date: Time.now, item_for_exchange: '$20 DBC Gift Card', host_id: student2.id, crasher_id: student1.id, accepted: true)
crash6 = Crash.create!(date: Time.now, item_for_exchange: '$1 Starbucks Gift Card', host_id: student2.id, crasher_id: student1.id, accepted: false)

crash7 = Crash.create!(date: Time.now, item_for_exchange: 'Walk your Cat', host_id: student3.id, crasher_id: student1.id, accepted: false)
crash8 = Crash.create!(date: Time.now, item_for_exchange: 'Teach Geography lessons', host_id: student2.id, crasher_id: student3.id, accepted: false)

crashes = Crash.all

crashes.each do |crash|
  Review.create!(crash_id: crash.id, reviewer_id: crash.host_id, reviewee_id: crash.crasher_id, review_text: "It was great", rating: rand(1..5))
end