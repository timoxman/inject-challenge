module Enumerable

  def timject(*input)
    if input[0].class == Symbol
      "If you are a symbol its going to fail"
    elsif input[0] == nil
      element = self[0]
      self.delete_at(0)
      self.each {|item| element = yield element, item }
    else
      element = input[0]
      self.each {|item| element = yield element, item }
    end
    return element
  end

end


#p [1,2,3].inject(0) {|result, element| result + element}
#p "hello".inject("A") {|result, element| result + element}

# p [1,2,3].inject(:+)
# p [1,2,3].timject(:+)


# p [1,2,3].timject(0) {|result, element| result + element}
# p [1,2,3].timject() {|result, element| result + element}
# p [1,2,3].timject(6) {|result, element| result + element}

# p %w{cat dog sheep}.inject() {|memo,word| memo.length > word.length ? memo : word}
# p %w{cat dog sheep}.timject() {|memo,word| memo.length > word.length ? memo : word}