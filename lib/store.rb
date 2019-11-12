class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}, presence: true
  validates :annual_revenue, numericality: { only_integer:true , greater_than: 0 }
end


# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)

# validates :custom

# def custom
#   if :mens_apparel.valid? || :womens_apparel.valid?
# end