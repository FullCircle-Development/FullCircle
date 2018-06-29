class Resource < ApplicationRecord
  validates :data , presence: true
  scope :type_of_resource, -> (type_of_resource) { where type_of_resource: type_of_resource }
end
