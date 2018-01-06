require 'prime'

def prime(target)
    (Prime.first target).last
end

p prime(10001)