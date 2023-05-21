el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: Title -> Structure -> Html
html_ title content = Html 
  (el "html" 
    (el "head" (el "title" title)
      <> el "body" (getStructureString content)
    )
  )

title_ :: String -> Structure
title_ = Structure . el "title"

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

newtype Html = Html String
newtype Structure = Structure String

type Title = String

append_ :: Structure -> Structure -> Structure
append_ c1 c2 =
  Structure (getStructureString c1 <> getStructureString c2)

render :: Html -> String
render html = case html of Html str -> str

getStructureString :: Structure -> String
getStructureString content = case content of Structure str -> str

main :: IO ()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml = 
  html_ 
    "Mitski"
    (append_ 
      (h1_ "Laurel Hell") 
      (append_
        (p_ "A burning hill")
        (p_ "i miss you more than anything")
      )
    )