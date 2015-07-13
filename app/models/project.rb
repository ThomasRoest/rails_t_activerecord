class Project < ActiveRecord::Base
  belongs_to :customer
  has_and_belongs_to_many :employees, :join_table => "employees_projects"
  #many to many relationships

  validates :time, numericality: {greater_than: 0, less_than: 24}
end
