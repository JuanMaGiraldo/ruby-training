module Purchaseable

  def purchase(item)
    "#{item} has been purchased!"
  end

end

class Bookstore
  include Purchaseable #inject
end

=begin
It actually works like include, except that
instead of inserting the module between the
class and its superclass in the chain, it
will insert it at the bottom of the chain,
even before the class itself.
=end

class Supermarket
  prepend Purchaseable
end

class CornerMart < Supermarket
end

barnes_and_noble = Bookstore.new
p barnes_and_noble.purchase("Atlas Shrugged")

p Supermarket.ancestors
