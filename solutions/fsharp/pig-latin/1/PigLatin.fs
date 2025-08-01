module PigLatin

let translate (input: string) = 
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
    let pigVowel = "ay"

    let procWord(word: string): string =

        let isOrSoundsAsVowel(word: string): bool =
            List.contains word[0] vowels || List.contains word[0..1] [ "xr"; "yt"]
    
        let moveConsonant(word: string): string =
            if word.Length = 2 && word[1] = 'y' then
                word.Substring(1) + word[0].ToString() + pigVowel         
            elif word.IndexOf "qu" >= 0 && word.IndexOf "qu" < 3 then
                let index = word.IndexOf "qu"
                word.Substring (index + 2) + word.Substring(0, index + 2) + pigVowel
            elif word.IndexOf "ch" >= 0 && word.IndexOf "ch" < 3 then
                let index = word.IndexOf "ch"
                word.Substring (index + 2) + word.Substring(0, index + 2) + pigVowel
            else
                let pos = 
                    if word[1] = 'h' then
                        if word[2] = 'r' then 2 else 1
                    else 0
                word.Substring(pos + 1) + word[0..pos] + if word[2] = 'y' then pigVowel else "" + pigVowel
            
        if isOrSoundsAsVowel word then word + pigVowel
        else moveConsonant word

    input.Split " "
     |> Array.map (fun w -> procWord w)
     |> String.concat " "