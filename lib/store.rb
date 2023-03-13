class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { 
    only_integer: true,
    :greater_than_or_equal_to => 0
  }
  # validate :has_at_least_one_mens_or_womens_apparel

  def has_at_least_one_mens_or_womens_apparel
    @no_mens = :mens_apparel.present? && :mens_apparel => false
    @no_womens = :womens_apparel.present? && :womens_apparel => false
    
    if @no_mens && @no_womens
      errors.add(:mens_apparel, "must carry at least one mens or womens apparel")
      errors.add(:womens_apparel, "must carry at least one mens or womens apparel")
    end
  end
end
