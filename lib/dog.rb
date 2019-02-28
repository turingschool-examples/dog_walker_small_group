class Dog

  attr_reader :name, :breed, :small_breed, :walks

  def initialize(name, breed, small_breed)
    @name = name
    @breed = breed
    @small_breed = small_breed
    @walks = 0
  end

  def bark
    if @small_breed
      "Yap!"
    else
      "ROOF"
    end
  end
  
end
