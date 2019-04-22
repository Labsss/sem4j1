require 'csv'
require 'pry'

class Gossip
    def initialize
    end

    def save
        CSV.open("db/gossip.csv", "a") do |csv|
            #csv << [@author, @content]
            csv << ["Mon super auteur", "Ma super description"]
        end
    end
    
end

binding.pry