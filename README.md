### fake data

populate the db with 'faker' gem and db seeds file


### AR query interface

**always escape the input variables, with ? syntax**

**examples with SQL**

Employee.where("name = ?", "thomas")

Employee.where("name = ? OR age = ?", @name, @age)

Employee.where("name LIKE ?", "Th%")

Employee.where("age > ?", 30)

Customer.where("employees >= ?", 200)


the 'where syntax' builds an ActiveRecord relation

**order**

Customer.first is the same as Customer.order('id ASC').limit(1)

The following retrieves the next 5 with state florida

`Customer.where("state = ?", "Florida").limit(5)
Customer.where("state = ?", "Florida").limit(5).offset(5)`

**eager loading**

find the customers and their time entries together, instead of selecting all with a block with a single sql query for each time entrie

`Customer.includes(:time_entries).first(5)`

**advanced finders**
returns in batches of 1000 (default)
`Customer.find_each { |x| nil }`

Customer.sum(:employees)
finds the sum of the employees, can be more efficient with a db index

**AR callbacks**

callback chain: before_validation, before_create etc.