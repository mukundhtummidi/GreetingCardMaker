{-# LANGUAGE OverloadedStrings #-}

import System.IO (hFlush, stdout)
import Data.List (intercalate)
import Control.Monad (forever)
import Text.Printf (printf)

-- Greeting card data type
data GreetingCard = GreetingCard {
    occasion   :: String,
    recipient  :: String,
    message    :: String,
    sender     :: String,
    eventDate  :: String,
    eventTime  :: String
} deriving (Show)

-- Main function
main :: IO ()
main = do
    putStrLn "------------------------------------------"
    putStrLn "                                          "
    putStrLn "    Welcome to the Greeting Card Maker!   "
    putStrLn "                                          "
    putStrLn "------------------------------------------"
    putStrLn "Let's create your greeting cards interactively.\n"
    cardMaker []

-- Card maker function
cardMaker :: [GreetingCard] -> IO ()
cardMaker cards = do
    putStrLn "\nWhat would you like to do?"
    putStrLn "1. Create a new greeting card"
    putStrLn "2. View created greeting cards"
    putStrLn "3. Exit"
    putStr "Enter your choice (1/2/3): "
    hFlush stdout
    choice <- getLine
    case choice of
        "1" -> do
            newCard <- createCard
            cardMaker (cards ++ [newCard])
        "2" -> do
            viewCards cards
            cardMaker cards
        "3" -> do
            putStrLn "\nThank you for using the Greeting Card Maker!"
            putStrLn "Goodbye!"
        _ -> do
            putStrLn "\nInvalid choice! Please try again."
            cardMaker cards

-- Function to create a new greeting card
createCard :: IO GreetingCard
createCard = do
    putStrLn "\n--- Create a New Greeting Card ---"
    putStr "Enter occasion (e.g., Birthday, Anniversary): "
    hFlush stdout
    occasion <- getLine
    
    putStr "Enter recipient's name: "
    hFlush stdout
    recipient <- getLine
    
    putStr "Enter message: "
    hFlush stdout
    message <- getLine
    
    putStr "Enter sender's name: "
    hFlush stdout
    sender <- getLine
    
    putStr "Enter event date (e.g., 2025-04-08): "
    hFlush stdout
    eventDate <- getLine
    
    putStr "Enter event time (e.g., 11:00 AM): "
    hFlush stdout
    eventTime <- getLine
    
    putStrLn "\nGreeting card successfully created!\n"
    
    return $ GreetingCard occasion recipient message sender eventDate eventTime

-- Function to view created greeting cards
viewCards :: [GreetingCard] -> IO ()
viewCards [] = do
    putStrLn "\nNo greeting cards created yet!"
viewCards cards = do
    putStrLn "\n--- Created Greeting Cards ---"
    mapM_ printCardWithBorder (zip [1..] cards)

-- Helper function to print a greeting card with a border for aesthetics
printCardWithBorder :: (Int, GreetingCard) -> IO ()
printCardWithBorder (index, GreetingCard occasion recipient message sender eventDate eventTime) = do
    let border = replicate 50 '-'
    
    printf "\n%s\n" border
    printf "| %d. Occasion: %s\n" index occasion
    printf "| Recipient: %s\n" recipient
    printf "| Message: %s\n" message
    printf "| Sender: %s\n" sender
    printf "| Event Date: %s\n" eventDate
    printf "| Event Time: %s\n" eventTime
    printf "%s\n" border
