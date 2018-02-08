def nyc_pigeon_organizer(data)
  allPigeonNames = []
  newData = {}
  data[:gender].each {|gender, pigeons| pigeons.each {|pigeon| allPigeonNames.push(pigeon)}}
  allPigeonNames.each {|pigeonName|
    data.each {|attribute, statuses|
      statuses.each {|status, pigeon|
        if pigeonName == pigeon
          if newData[pigeonName][attribute].push(status.to_s)
          else
            newData[pigeonName][attribute] = [status.to_s]
            
          end
          newData[pigeonName][attribute] 
        end
      }
    }
  }
  # write your code here!
end
