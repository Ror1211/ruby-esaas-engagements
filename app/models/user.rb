class User < ActiveRecord::Base

  default_scope { order('name') }

  validates_presence_of :name
  validates_presence_of :email

  validates :email, uniqueness: true

  has_many :orgs, :foreign_key => 'contact_id'
end