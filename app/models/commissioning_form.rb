class CommissioningForm < ActiveRecord::Base
has_many :mods
has_many :inverters
belongs_to :user
validates :job, :presence => true
accepts_nested_attributes_for :mods, :inverters


def self.search(query)
where("job like ?", "%#{query}%")
#where("customer_name like ?", "%#{query}%") # works just not in use
end

end
