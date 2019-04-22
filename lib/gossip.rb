require 'csv'
require 'pry'

class Gossip

    def initialize(author, content)
        @content = content
        @author = author
      end

    def save
        CSV.open("./db/gossip.csv", "a") do |csv|
            csv << [@author, @content]
            #csv << ["Mon super auteur", "Ma super description"]
        end
    end

    def all
        all_gossips = []

        CSV.foreach("./db/gossip.csv", quote_char: '"', row_sep: :auto, headers: true) do |row|
          gossip_temp = Gossip.new(row[0],row[1])
          all_gossips << gossip_temp
        end
        all_gossips
    end
    
end
