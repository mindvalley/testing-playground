Before do |scenario|
    # Mongoid 2
    # Mongoid.master.collections.select {|c| c.name !~ /system/ }.each(&:drop)
    
    # Mongoid 3
    Mongoid.purge!
end
