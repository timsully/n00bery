# Regular Ruby programs bind methods defined in the top level scope
# to main as private methods whereas IRB binds top level scope to main
# as public methods for convenience
def hey_hey; end
p self # => main 
p self.private_methods.include?(:hey_hey) # => true