el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

html_ :: String -> String
html_ = el "html"

body_ :: String -> String
body_ = el "body"

head_ :: String -> String
head_ = el "head"

title_ :: String -> String
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

makeHtml title body = html_ ( head_ ( title_ title) <> (body_ body))

myhtml = makeHtml "Mitski" (h1_ "Laurel Hell" <> p_ "A burning hill")

main = putStrLn myhtml