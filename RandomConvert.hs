module RandomConvert where
import System.Random

specialChars = "!@#$%^&*()_-+=?" 
generateRandomPlate::IO String
generateRandomPlate = do 
   letra1 <- randomRIO('A','Z')
   letra2 <- randomRIO('a','z')
   letra3 <- randomRIO('A','Z')
   charSpecials1 <- randomRIO(0,length specialChars - 1)
   num1 <- randomRIO('0','9')
   num2 <- randomRIO('0','9')
   num3 <- randomRIO('0','9')
   charSpecials2 <- randomRIO(0,length specialChars - 1)
   return [letra1, letra2, letra3, specialChars !! charSpecials1, num1, num2, num3, specialChars !! charSpecials2]
