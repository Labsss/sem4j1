require 'csv'

class Gossip
  attr_accessor :author, :content

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

  def self.all
      all_gossips = []

      CSV.foreach("./db/gossip.csv", quote_char: '"', row_sep: :auto, headers: true) do |row|
        gossip_temp = Gossip.new(row[0],row[1])
        all_gossips << gossip_temp
      end
      all_gossips
  end

  def self.find(id)
  gossips = []
  CSV.read("./db/gossip.csv").each_with_index do |row, index|
    if (id == index+1)
      gossips << Gossip.new(row[0], row[1])
      break
        end
      end
      return gossips
  end

  def self.update(id,author,content)
    puts id
    gossips = []
		CSV.read("./db/gossip.csv").each_with_index do |row,i|
			if id.to_i == i    # i+1  
				gossips<< Gossip.new(author, content)
			else
				gossips << Gossip.new(row[0], row[1])
			end
		end

		CSV.open("./db/gossip.csv", "w") do |csv| 
			gossips.each do |row|
				csv << row
    end
  end

end
  
end
