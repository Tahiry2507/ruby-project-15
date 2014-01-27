class Account
 attr_accessor :account_holder
 def initialize
   @balance = 0
   @journal = []
 end

 def balance
   return @balance
 end

 def deposit
   print "How much money would you like to deposit: "
   a = gets.chomp
   b = a.scan(/^\W+[0-9,.]+|[0-9,.]+$/).join
   amount = a.scan(/^\W+[0-9,.]+|[0-9,.]+$/).join.scan(/[0-9,.]+$/).join.to_f

   if a == b
      @balance += amount
   else puts "The amount you specified needs to be a number"
   end
   @journal << ["Deposited: #{amount}"]
   return @balance
 end

 def withdraw
   print "How much money would you like to withdraw: "
   a = gets.chomp
   b = a.scan(/^\W+[0-9,.]+|[0-9,.]+$/).join
   amount = a.scan(/^\W+[0-9,.]+|[0-9,.]+$/).join.scan(/[0-9,.]+$/).join.to_f
   
   if a == b
      if amount < @balance
         @balance -= amount
      else puts "Sorry, that is too much"
      end
   else puts "The amount you specified needs to be a number"
   end
   @journal << ["Withdrew: #{amount}"]
   return @balance
 end
end

