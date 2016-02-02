class Store < ActiveRecord::Base
  validates :name, presence: true
  validates :url, presence: true, uniqueness: true

  before_validation :generate_url

  # associate items wiht the store
  has_many :items 

  def generate_url
    self.url = name.parameterize
  end

end
