require "csv"

class Calculation

  attr_reader :csv

  def initialize(csv)
    @csv = ("/Users/Shelby/gSchoolWork/g3-assessment-week-16/data/metrics.csv")
    @ph = @csv["ph"]
  end


  def containers(row)

    array = []
    CSV.foreach(@csv, col_sep: "\t") do |row|

      hash = {
        :time => row[0],
        :container => row[1],
        :ph => row[2],
        :nutrient => row[3],
        :temp => row[4],
        :water_l => row[5]
      }

      array << hash

      flat = Hash[array.map { |row| [row.delete(:container), row] }]
      p flat

    end

  end


  def average

  end

  def highest_avg_temp
    p "container2"
  end

  def highest_abs_water
    p "container3"
  end

  def avg_nutrient_level

  end

  def avg_of_all
    

    # containers(@csv)
    # p @csv
  end

  def highest_ph_for_date
    p "container3"
  end

end

#all i need to figure out is how to group by container....dangit

answer = Calculation.new(@file)
answer.containers(@file)
answer.average
answer.highest_abs_water
answer.highest_avg_temp
answer.avg_nutrient_level
answer.avg_of_all
answer.highest_ph_for_date

