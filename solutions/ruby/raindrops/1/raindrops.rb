class Raindrops
  def self.convert(num)
    sound = ""
    if(num % 3) == 0
      sound = sound + "Pling"
    end
    if(num % 5) == 0
      sound = sound + "Plang"
    end
    if(num % 7) == 0
      sound = sound + "Plong"
    end
    if(sound != "") then return sound else return num.to_s() end
  end
end