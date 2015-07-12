class Employee < Account
 has_many :time_entries
 has_and_belongs_to_many :projects, :join_table => "employees_projects"

  #set the type of the db entry to 'Employee' to use STI
  def total_hours
    time_entries.sum(:time)
  end

  def log_time(amount, customer)
    TimeEntry.create(time: amount, employee: self, account: customer)
  end
end