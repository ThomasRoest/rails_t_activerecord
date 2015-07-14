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
`
Customer.where("state = ?", "Florida").limit(5)
Customer.where("state = ?", "Florida").limit(5).offset(5)
`

**advanced finders**
