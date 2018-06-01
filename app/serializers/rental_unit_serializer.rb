class RentalUnitSerializer < ActiveModel::Serializer
  attributes :id, :address, :rooms, :bathrooms, :price, :price_per_room
  belongs_to :user
  
  def price
    object.price_cents
  end
  
  def price_per_room
    object.price_cents
  end
end