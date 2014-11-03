class MillionDuplicate
  def array
    duplicate = (1..1000000).to_a
    duplicate << rand(1..1000000)
  end
  def check_duplicate
    duplicate.detect{ |e| duplicate.count(e) > 1 }
    puts e
  end
end