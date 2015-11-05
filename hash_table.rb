require 'digest'  # => true
class Hashtable

  def initialize
    @table = Array.new(4)  # => [nil, nil, nil, nil]
  end                      # => :initialize

  def get_hash(key, value)
    digest = Digest::SHA1.hexdigest(key)  # => "a51dda7c7ff50b61eaea0444371f4a6a9301e501"
    digest_num = digest.to_i(16)          # => 942649231640121830559076862902706417422947181825
    index = digest_num % @table.count     # => 1
    @table[index] = [key,value]           # => ["john", "rewls"]
    @table                                # => [nil, ["john", "rewls"], nil, nil]
  end                                     # => :get_hash
end                                       # => :get_hash

jable = Array.new   (4)  # => [nil, nil, nil, nil]

table = Hashtable.new  # => #<Hashtable:0x007fc8f9832538 @table=[nil, nil, nil, nil]>

table.get_hash("john", "rewls")  # => [nil, ["john", "rewls"], nil, nil]
p table                          # => #<Hashtable:0x007fc8f9832538 @table=[nil, ["john", "rewls"], nil, nil]>

# >> #<Hashtable:0x007fc8f9832538 @table=[nil, ["john", "rewls"], nil, nil]>
