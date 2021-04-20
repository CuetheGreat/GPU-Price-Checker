

class GPU
    attr_accessor :name, :id, :quantity, :price, :link

    @@all = []

    def initialize(gpu)
        gpu.each { |key,value| public_send("#{key}=",value)}
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

end