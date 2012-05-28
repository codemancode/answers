class Question < ActiveRecord::Base
  attr_accessible :details, :title

  # Associations
  has_many :answers

  # Validations
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :details, :on => :create, :message => "can't be blank"
end
