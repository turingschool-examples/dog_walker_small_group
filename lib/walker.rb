class Walker

  attr_reader :name, :poop_bags, :clients

  def initialize(name, poop_bags)
    @name = name
    @poop_bags = poop_bags
    @clients = []
  end

  def accept_client(dog)
    if !@clients.include?(dog)
      @clients << dog
    end
  end

  def walk_dog(dog)
    dog.walk
    @poop_bags -= 1
  end

  def puppy_clients
    @clients.find_all do |client|
      client.age < 2
    end
  end

end
