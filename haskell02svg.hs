import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.

svgAll :: String
svgAll = 
  svgBegin 500 500 ++ 
  
  (svgCircle 30 20 900 "rgb(0, 0, 0, 1)") ++ 
  (svgCircle 100 120 350 "rgb(255, 255, 0, 1)") ++ 
  (svgCircle 90 90 50 "rgb(105, 14, 30, 0.8)") ++ 
  (svgCircle 30 20 40 "rgb(20, 15, 12, 0.4)") ++
  (svgCircle 100 30 5 "rgb(0, 0, 0, 1)") ++ 
  
  --cometas
  (svgCircle 105 500 4 "rgb(255, 255, 255, 1)") ++ 
  (svgCircle 390 400 6 "rgb(255, 255, 255, 1)") ++
  (svgCircle 430 440 2 "rgb(255, 255, 255, 1)") ++
  (svgCircle 430 300 6 "rgb(255, 127, 0, 1)") ++
  (svgCircle 430 300 5 "rgb(255, 255, 255, 0.7)") ++
  (svgCircle 429 299 4 "rgb(255, 255, 255, 0.7)") ++
  (svgCircle 427 297 3 "rgb(255, 127, 0, 1)") ++
  (svgCircle 427 297 3 "rgb(255, 255, 255, 0.7)") ++
  (svgCircle 425 295 3 "rgb(255, 255, 255, 1)") ++
  (svgCircle 422 292 2 "rgb(255, 127, 0, 0.6)") ++
  (svgCircle 422 292 2 "rgb(255, 127, 0, 0.6)") ++
  (svgCircle 421 291 2 "rgb(255, 127, 0, 0.6)") ++
  (svgCircle 420 290 1 "rgb(255, 127, 0, 0.6)") ++
  (svgCircle 419 289 2 "rgb(255, 127, 0, 0.6)") ++
  -- terra
  (svgCircle 150 250 10 "rgb(0, 0, 255, 1)") ++ 
  -- lua
  (svgCircle 163 263 3 "rgb(5, 10, 15, 0.7)") ++ 
  -- marte
  (svgCircle 200 270 10 "rgb(255, 127, 0, 1)") ++
  
  svgEnd

main :: IO ()
main = do
  writeFile "circless.svg" svgAll