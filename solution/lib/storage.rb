class Storage
  PASSENGER_LIMIT_DEFAULT = 4
  
  def initialize(limit = PASSENGER_LIMIT_DEFAULT)
    @limit = limit
    @items = []
  end

  def add(item)
    fail 'Limit Reached Error' if full?

    items << item
  end

  private

  def full?
    items.count >= limit
  end

  attr_reader :items, :limit
end
