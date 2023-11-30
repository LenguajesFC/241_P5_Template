module Semantic.Static.Vt where
import Sintax.Expr (Expr)
import Semantic.Static.Type (Type)
import Data.Map (Map)

type Ctx = [(String, Type)]

vt :: Ctx -> Expr -> Type
vt _ _ = error "implementar"