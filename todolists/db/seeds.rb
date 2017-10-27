
User.destroy_all
TodoList.destroy_all
Profile.destroy_all
TodoItem.destroy_all


fiorina = User.create! username: "Fiorina", password_digest: "fio123"

fiorina.create_profile! first_name: "Carly" , last_name: "Fiorina", birth_year: 1954, gender: "female"

trump = User.create! username: "Trump", password_digest: "tru123"

trump.create_profile! first_name: "Donald" , last_name: "Trump", birth_year: 1946, gender: "male"

carson = User.create! username: "Carson", password_digest: "car123"

carson.create_profile! first_name: "Ben" , last_name: "Carson", birth_year: 1951, gender: "male"

clinton = User.create! username: "Clinton", password_digest: "cli123"

clinton.create_profile! first_name: "Hillary" , last_name: "Clinton", birth_year: 1947, gender: "female"


User.all.each_with_index do |u,i|
  todoList = u.todo_lists.create! list_name: "#{i}-List ", list_due_date: Date.today+1.year
  	5.times do
  		todoList.todo_items.create! due_date: Date.today+1.year, title: "#{i}-Title ", description: "#{i}-Task"
 	end
end
