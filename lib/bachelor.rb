require 'pry'

=begin data = { 
  "season 30": [
    {
      "name":      "Beth Smalls",
      "age":       "26",
      "hometown":  "Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":    "Winner"
    },
    {
      "name":       "Becca Tilley",
      "age":        "27",
      "hometown":   "Shreveport, Louisiana",
      "occupation": "Chiropractic Assistant",
      "status":     "Eliminated Week 8"
    }
  ],
  "season 29": [
    {
      "name":      "Ashley Yeats",
      "age":       "24",
      "hometown":  "Denver, Colorado",
      "occupation":"Dental Assitant",
      "status":    "Winner"
    },
    {
      "name":       "Sam Grover",
      "age":        "29",
      "hometown":   "New York, New York",
      "occupation": "Entertainer",
      "status":     "Eliminated Week 6"
    }
  ]
=end }

def get_first_name_of_season_winner(data, season)
  data[season][0].each do |contestant_value, contestant_data|
    if data[season][0]["status"] == "Winner"
      name = data[season][0]["name"].split(' ')
      return name.first
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, wrapper|
    data[season].each do |contestant_value|
        if contestant_value["occupation"] == occupation
          return contestant_value["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
