require "csv"

class Plant


  def initialize(file)
    @file = ("/Users/Shelby/gSchoolWork/g3-assessment-week-16/data/metrics.csv")
  end


  def show(file)

    CSV.foreach(@file, col_sep: "\t") do |row|
        row

       build_row = {
          :timestamp => row[0],
        :container => row[1],
        :name => row[2],
        :ph => row[3],
        :nutrient_level => row[4],
        :temperature => row[5],
        :water_level => row[6]
        }

      p build_row

    end
  end

end


new_plant = Plant.new(@file)
new_plant.show(@file)

