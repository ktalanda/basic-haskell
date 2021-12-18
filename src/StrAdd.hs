module StrAdd where

import           Data.Char

isAllDigits :: String -> Bool
isAllDigits ""  = False
isAllDigits val = all (== True) $ map isDigit val

strAddInts :: String -> String -> Either String Int
strAddInts a b
  | isAllDigits a && isAllDigits b       = Right (read a + read b)
  | not (isAllDigits a || isAllDigits b) = Left "Both args are wrong"
  | not (isAllDigits a)                  = Left "First arg is wrong"
  | otherwise                            = Left "Second ars is wrong"

displayResult :: Either String Int -> String
displayResult (Left  addError) = "error: " ++ show addError
displayResult (Right res     ) = "answer: " ++ show res
