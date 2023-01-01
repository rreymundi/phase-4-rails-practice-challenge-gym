class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :total_charges
  has_many :memberships
  
  def total_charges
    self.object.memberships.sum(:charge)
  end

end
