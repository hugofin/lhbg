import Html

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