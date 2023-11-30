module Test where
import Sintax.Expr
import Semantic.Dynamic.Inter ( evalStep, eval )
import Semantic.Static.Type
import Semantic.Static.Vt ( vt )
import Sintax.Parser (parser)
import Sintax.Lexer (lexer)

mugiCheck :: IO Bool  -> IO ()
mugiCheck a = do a <- a;
                 if a
                 then putStrLn "Respiracion de Haskell... Primera postura, Acierto en el test!"
                 else putStrLn  "Mal! Donificaste a Rengoku :C"

stepN :: Int -> IO Expr -> IO Expr
stepN n e = if n == 0
            then e
            else stepN  (n-1) (evalStep <$> e)

test_parser :: FilePath -> IO Expr
test_parser file = parser . lexer <$> readFile file

execute :: Expr -> (Expr, Type)
execute e = let t = vt [] e
                v = eval e
            in (v, t)

checkExecute :: IO (Expr, Type) -> Expr -> Type -> IO Bool
checkExecute r e t = (\et -> fst et == e && snd et == t) <$> r

-- esto va a cambiar... test pendientes
pgm1 = test_parser "mypgm/simple_fun.minihs"
pgm2 = test_parser "mypgm/alcance.minihs"
pgm3 = test_parser "mypgm/fact.minihs"
pgm4 = test_parser "mypgm/fact_tail.minihs"
pgm5 = test_parser "mypgm/reverse.minihs"

test_s1 = checkExecute (execute <$> pgm1) (Float 4) TFloat
test_s2 = checkExecute (execute <$> pgm2) (Float 4) TFloat
test_s3 = checkExecute (execute <$> pgm3) (Float 4) TFloat
test_s4 = checkExecute (execute <$> pgm4) (Float 4) TFloat
test_s5 = checkExecute (execute <$> pgm5) (Float 4) TFloat

main = do
    putStrLn " ======== Test ======== "
    putStr ""
    mugiCheck test_s1
    putStr ""
    mugiCheck test_s2
    putStr ""
    mugiCheck test_s3
    putStr ""
    mugiCheck test_s4
    putStr ""
    mugiCheck test_s5