import Data.Char

--Single line comment

{- 
    Multi line comment
-}

simpleFunction :: Integer -> Integer -> Integer
simpleFunction x 0 = x
simpleFunction 5 _ = 5
simpleFunction x y = x * y


tuples :: (Integer, String) -> Either Integer String
tuples (a, b) = if a /= 0 then Left a else Right b

letUsage :: Integer -> Integer -> Integer
letUsage a b =
    let
        a' = a^2
        b' = b * 5
        c = a * b
    in
        c

whereUsage :: [Int] -> Int -> Int
whereUsage l a = doSomething l a
    where
         doSomething l a = something l 5 `div` a
         something l m = sum $ map (*m) l



guardExample :: [Char] -> [Char]
guardExample [] = "empty string"
guardExample (c:_)
    | isUpper c = "upper case"
    | isLower c = "lower case"
    | isDigit c = "digit"
    | otherwise  = "other character"


data SimpleStructure = A | B Int | C String

instance Show SimpleStructure where
    show A = "Just A"
    show (B x) = show x
    show (C x) = show x

usedSimpleStruct :: SimpleStructure -> Maybe Bool
usedSimpleStruct A = Nothing
usedSimpleStruct (B x) = Just True
usedSimpleStruct (C x) = Just True

data RecordType = RecordType
    {
        field1 :: Float,
        sampleString :: String,
        sampleId :: Int
    }
    deriving (Show)


list1 :: [Integer]
list1 = [1..20]

list2 :: [(Integer, Integer)]
list2 = [(x, y) | x <- [1..3], y <- [1..3]]

list3 :: [Integer]
list3 = [x | x <- [1..20], even x ]

mapExample :: [Integer]
mapExample = map (+1) [1, 2, 3, 4]