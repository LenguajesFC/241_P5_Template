module Semantic.Static.Vt where
import Sintax.Expr ( Expr(Lambda, Let, Fix, BinaryOp, Float, Int, App, Var), ArithOp (Minus), Op (ArithOp) )
import Semantic.Static.Type (Type (TFunc, TInt, TFloat))
import Semantic.Static.Sub ( sub )

type Ctx = [(String, Type)]

vt :: Ctx -> Expr -> Type
vt ctx (Var x) = case lookup x ctx of
                  (Just t) -> t
                  Nothing -> error "Variable libre"
vt ctx (Int _) = TInt
vt ctx (Float _) = TFloat
vt ctx (BinaryOp (ArithOp Minus) e1 e2) = case (t1, t2) of
                                     (TInt, TInt) -> TInt
                                     _            -> TFloat
                                     where t1 = check ctx e1 TFloat
                                           t2 = check ctx e2 TFloat
vt ctx (Let x e1 e2)
 | x `elem` frVars e1 = vt ((x,vt ctx (Fix x e1)): ctx) e2
 | otherwise          = vt ((x,vt ctx e1)        : ctx) e2

vt ctx (Fix f (Lambda x t1 t2 e')) =  TFunc t1 t2'
                                    where ctx' = (f, TFunc t1 t2):(x,t1):ctx
                                          t2'  = check ctx' e' t2

vt ctx (App e1 e2) = case vt ctx e1 of
                        (TFunc t1 t2) -> t2
                                        where t' = check ctx e2 t1
                        _ -> error ""

vt _ e = error ("niaaa: " ++ show e)

frVars :: Expr -> [String]
frVars _ = ["fact"] -- implementar esto, se quedo asi para pruebas

check :: Ctx -> Expr -> Type -> Type
check ctx e expected
 | sub real expected = real
 | otherwise         = error "Tipos no compatibles"
 where real = vt ctx e