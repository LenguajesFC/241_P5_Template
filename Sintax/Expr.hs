module Sintax.Expr where
import Semantic.Static.Type ( Type )

data Expr
  = Var String
  | Bool Bool
  | Int Int
  | Float Float
  | BinaryOp Op Expr Expr
  | UnaryOp UnaryOp Expr
  | App Expr Expr
  | If Expr Expr Expr
  | Let String Expr Expr
  | Lambda String Type Type Expr
  | Record [(String, Expr)]
  | Prj String Expr
  | Pair Expr Expr
  | Fst Expr
  | Snd Expr
  | Inl Type Expr
  | Inr Type Expr
  | Case Expr String Expr String Expr
  deriving (Show, Eq)

data UnaryOp = Negate | Not | Pot | Sqrt deriving (Show, Eq)

data Op
  = ArithOp ArithOp
  | CompOp CompOp
  | LogicalOp LogicalOp
  deriving (Show, Eq)

data ArithOp = Plus | Times | Minus | Div | Mod deriving (Show, Eq)

data CompOp = Eq | Lt | Gt | Leq | Geq deriving (Show, Eq)

data LogicalOp = And | Or deriving (Show, Eq)