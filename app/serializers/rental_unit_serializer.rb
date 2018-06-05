class RentalUnitSerializer < ActiveModel::Serializer
  cache key: 'rental_unit'
  attributes :id, :address, :rooms, :bathrooms, :price, :price_per_room, :email
  belongs_to :user
  
  def price
    object.price_cents * 2
  end
  
  def price_per_room
    object.price_cents * 4
  end
  
  def email
    object.user.email
  end
end