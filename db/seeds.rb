user1 = User.create!(email: 'dan@dan.edu', password: 'password')
user2 = User.create!(email: 'Dave@Dave.edu', password: 'password')
user3 = User.create!(email: 'Benedict@Benedict.edu', password: 'password')

student1 = Student.create!(first_name: 'Dan', last_name: 'Dobrick', devise_id: 1, is_crasher: true, is_host: false, school: 'Hard Knocks', crashable?: false)
student2 = Student.create!(first_name: 'Dave', last_name: 'Nestoff', devise_id: 2, is_crasher: false, is_host: true, school: 'School of Rock', crashable?: true)
student3 = Student.create!(first_name: 'Benedict', last_name: 'Schurwanz', devise_id: 3, is_crasher: true, is_host: true, school: 'The Derek Zoolander Center For Kids Who Can\'t Read Good And Wanna Learn To Do Other Stuff Good Too', crashable?: false)