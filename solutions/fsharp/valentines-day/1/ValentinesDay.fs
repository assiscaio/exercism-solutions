module ValentinesDay

// TODO: please define the 'Approval' discriminated union type
type Approval =
    | Yes
    | No
    | Maybe

type Cuisine = 
    | Korean
    | Turkish

type Genre = 
    | Crime
    | Horror
    | Romance
    | Thriller

type Activity = 
    | BoardGame
    | Chill
    | Movie of Genre
    | Restaurant of Cuisine
    | Walk of int

let rateActivity (activity: Activity): Approval = 
    match activity with
     | BoardGame -> No
     | Chill -> No
     | Movie movie_genre -> if movie_genre = Genre.Romance then Yes else No
     | Restaurant c -> if c = Korean then Yes else Maybe 
     | Walk w -> if w < 3 then Yes elif w < 5 then Maybe else No
