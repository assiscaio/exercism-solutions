module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven = 40
-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes x = x * 2
-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes layers minutesInOven =
    minutesInOven + (preparationTimeInMinutes layers)