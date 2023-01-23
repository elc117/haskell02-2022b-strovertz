isFever :: Float -> Bool
isFever x = if x > 37.8 then True else False

hasFever :: [Float] -> [Float]
hasFever x = filter isFever x

hasFever' :: [Float] -> [Float]
hasFever' x = filter (\x -> x > 37.8) x

itemize :: [String] -> [String]
itemize s = map (\s -> "<li>" ++ s ++ "</li>") s

bigCircles :: Float -> [Float] -> [Float]
bigCircles n list = filter (\x -> x > n) list

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine p = filter (\(_,x) -> x > 37.8) p

agesIn :: [Int] -> Int -> [Int]
agesIn list year = map (\x -> year - x) list

startsWithA :: String -> Bool
startsWithA s = head s == 'A'

superNames :: [String] -> [String]
superNames s = map (\s -> "Super" ++ s) (filter startsWithA s)

onlyShorts :: [String] -> [String]
onlyShorts s = filter (\s -> length s < 5) s