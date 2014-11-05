# Duck typing means that the object is defined by what it can do and not by what it is.  Ruby is less concerned with the class of an object and more concerned with what methods you can call on the object. 
#   For example if an object acts like a string go ahead and treat it like a string.
# Below is an example of Duck Typing:
class dog
  def bark
    puts "woof woof"
  end
  def sees_cat
    puts "the dog chases cat"
  end
end

class cat
  def meow
    puts "meow meow"
  end
  def sees_dog
    puts "cat runs and hides"
  end 
end

def goes_outside(dog)
  puts dog.bark
  puts dog.sees_cat
end

black_dog = Dog.new
black_cat = Cat.new

black_dog.bark #=> "woof woof"
black_dog.sees_cat #=> "the dog chases cat"

black_cat.meow #=> "meow meow"
black_cat.sees_dog #=> "cat runs and hides"

goes_outside(Dog.new)
#=> "woof woof"
#=> "the dog chases cat"

goes_outside(Cat.new)
#=> "meow meow"
#=> "cat runs and hides"

