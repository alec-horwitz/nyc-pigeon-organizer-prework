require "pry"
def nyc_pigeon_organizer(data)
  allPigeonNames = []
  newData = {}
  data[:gender].each {|gender, pigeons|
    pigeons.each {|pigeon|
      allPigeonNames.push(pigeon)
    }
  }
  allPigeonNames.each {|pigeonName|
    data.each {|attribute, statuses|
      statuses.each {|status, pigeons|
        pigeons.each {|pigeon|
          if pigeonName == pigeon
            if newData[pigeonName] == false
              newData[pigeonName] = {}
            end
            if newData[pigeonName][attribute]
              newData[pigeonName][attribute].push(status.to_s)
            else
              newData[pigeonName][attribute] = [status.to_s]
            end
          end
        }
      }
    }
  }
  binding.pry
  # write your code here!
end
