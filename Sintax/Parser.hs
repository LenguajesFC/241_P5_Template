{-# OPTIONS_GHC -w #-}
module Sintax.Parser where
import Sintax.Lexer
import Sintax.Expr
import Semantic.Static.Type
import Data.Map
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,416) ([15872,38913,30792,1,2,0,0,0,0,0,0,65408,7,2,0,0,0,0,0,0,0,0,0,0,0,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,8,0,0,2048,0,0,0,8,0,0,15872,38913,30792,1,318,18584,376,0,0,32768,0,0,0,128,15872,38913,30792,1,65408,7,514,8192,0,64,112,32,16384,28672,0,0,0,0,0,0,0,0,0,384,0,0,0,0,0,0,1,0,0,4096,0,0,0,1,0,65408,39,2,0,0,0,0,0,0,0,65024,40959,31560,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,8,0,0,0,0,1024,0,65408,3,0,32768,511,0,0,3968,0,0,32768,15,0,0,3968,0,0,32768,15,0,0,3968,0,0,0,0,0,0,0,0,0,0,0,0,0,3584,0,0,0,14,0,0,65472,7,2,0,0,0,0,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,318,18584,376,15872,38913,30792,1,0,0,0,2048,0,0,0,672,4096,0,8192,0,64,112,8,0,0,0,0,0,0,0,0,0,0,0,0,0,672,4096,0,0,0,64,0,0,0,64,15872,38913,30792,1,32,16384,28672,8192,0,64,112,32,16384,28672,0,0,384,0,0,0,0,0,0,32,0,704,4096,0,15872,38913,30792,1,0,0,0,32768,2047,512,0,65408,7,2,32768,2047,514,0,65408,71,2,49152,2047,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,318,18584,376,15872,38913,30792,1,65472,7,2,0,0,0,0,32,16384,28672,0,0,0,0,8,0,0,32768,2,16,0,0,0,0,0,2,0,0,65472,7,2,2048,0,0,0,0,0,1024,0,0,0,0,0,0,0,32768,2,16,0,0,0,0,32768,2047,516,0,65408,7,2,0,0,0,0,318,18584,376,32768,2047,512,8,0,0,32,2048,0,0,0,0,0,1024,15872,38913,30792,1,65408,32775,2,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","E","reglist","reg","reglistT","regT","T","num","float","var","bool","'('","')'","'+'","'-'","'*'","'/'","'%'","'=='","'>'","'<'","'>='","'<='","'&&'","'||'","not","if","then","else","let","'='","in","end","lam","'->'","':'","'{'","'}'","','","'['","']'","fst","snd","inr","inl","'_'","case","of","'=>'","'|'","Int","Float","Bool","%eof"]
        bit_start = st Prelude.* 56
        bit_end = (st Prelude.+ 1) Prelude.* 56
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..55]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (10) = happyShift action_2
action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (29) = happyShift action_10
action_0 (32) = happyShift action_11
action_0 (36) = happyShift action_12
action_0 (39) = happyShift action_13
action_0 (44) = happyShift action_14
action_0 (45) = happyShift action_15
action_0 (46) = happyShift action_16
action_0 (47) = happyShift action_17
action_0 (49) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (10) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (16) = happyShift action_33
action_3 (17) = happyShift action_34
action_3 (18) = happyShift action_35
action_3 (19) = happyShift action_36
action_3 (20) = happyShift action_37
action_3 (21) = happyShift action_38
action_3 (22) = happyShift action_39
action_3 (23) = happyShift action_40
action_3 (24) = happyShift action_41
action_3 (25) = happyShift action_42
action_3 (26) = happyShift action_43
action_3 (27) = happyShift action_44
action_3 (42) = happyShift action_45
action_3 (56) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_4

action_5 _ = happyReduce_3

action_6 _ = happyReduce_2

action_7 (10) = happyShift action_2
action_7 (11) = happyShift action_4
action_7 (12) = happyShift action_5
action_7 (13) = happyShift action_6
action_7 (14) = happyShift action_7
action_7 (17) = happyShift action_8
action_7 (28) = happyShift action_9
action_7 (29) = happyShift action_10
action_7 (32) = happyShift action_11
action_7 (36) = happyShift action_12
action_7 (39) = happyShift action_13
action_7 (44) = happyShift action_14
action_7 (45) = happyShift action_15
action_7 (46) = happyShift action_16
action_7 (47) = happyShift action_17
action_7 (49) = happyShift action_18
action_7 (4) = happyGoto action_32
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (10) = happyShift action_2
action_8 (11) = happyShift action_4
action_8 (12) = happyShift action_5
action_8 (13) = happyShift action_6
action_8 (14) = happyShift action_7
action_8 (17) = happyShift action_8
action_8 (28) = happyShift action_9
action_8 (29) = happyShift action_10
action_8 (32) = happyShift action_11
action_8 (36) = happyShift action_12
action_8 (39) = happyShift action_13
action_8 (44) = happyShift action_14
action_8 (45) = happyShift action_15
action_8 (46) = happyShift action_16
action_8 (47) = happyShift action_17
action_8 (49) = happyShift action_18
action_8 (4) = happyGoto action_31
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (10) = happyShift action_2
action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (17) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (29) = happyShift action_10
action_9 (32) = happyShift action_11
action_9 (36) = happyShift action_12
action_9 (39) = happyShift action_13
action_9 (44) = happyShift action_14
action_9 (45) = happyShift action_15
action_9 (46) = happyShift action_16
action_9 (47) = happyShift action_17
action_9 (49) = happyShift action_18
action_9 (4) = happyGoto action_30
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (10) = happyShift action_2
action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (17) = happyShift action_8
action_10 (28) = happyShift action_9
action_10 (29) = happyShift action_10
action_10 (32) = happyShift action_11
action_10 (36) = happyShift action_12
action_10 (39) = happyShift action_13
action_10 (44) = happyShift action_14
action_10 (45) = happyShift action_15
action_10 (46) = happyShift action_16
action_10 (47) = happyShift action_17
action_10 (49) = happyShift action_18
action_10 (4) = happyGoto action_29
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (12) = happyShift action_28
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (12) = happyShift action_27
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (12) = happyShift action_26
action_13 (5) = happyGoto action_24
action_13 (6) = happyGoto action_25
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (10) = happyShift action_2
action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (17) = happyShift action_8
action_14 (28) = happyShift action_9
action_14 (29) = happyShift action_10
action_14 (32) = happyShift action_11
action_14 (36) = happyShift action_12
action_14 (39) = happyShift action_13
action_14 (44) = happyShift action_14
action_14 (45) = happyShift action_15
action_14 (46) = happyShift action_16
action_14 (47) = happyShift action_17
action_14 (49) = happyShift action_18
action_14 (4) = happyGoto action_23
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (10) = happyShift action_2
action_15 (11) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (13) = happyShift action_6
action_15 (14) = happyShift action_7
action_15 (17) = happyShift action_8
action_15 (28) = happyShift action_9
action_15 (29) = happyShift action_10
action_15 (32) = happyShift action_11
action_15 (36) = happyShift action_12
action_15 (39) = happyShift action_13
action_15 (44) = happyShift action_14
action_15 (45) = happyShift action_15
action_15 (46) = happyShift action_16
action_15 (47) = happyShift action_17
action_15 (49) = happyShift action_18
action_15 (4) = happyGoto action_22
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (48) = happyShift action_21
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (48) = happyShift action_20
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (10) = happyShift action_2
action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (17) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (29) = happyShift action_10
action_18 (32) = happyShift action_11
action_18 (36) = happyShift action_12
action_18 (39) = happyShift action_13
action_18 (44) = happyShift action_14
action_18 (45) = happyShift action_15
action_18 (46) = happyShift action_16
action_18 (47) = happyShift action_17
action_18 (49) = happyShift action_18
action_18 (4) = happyGoto action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (16) = happyShift action_33
action_19 (17) = happyShift action_34
action_19 (18) = happyShift action_35
action_19 (19) = happyShift action_36
action_19 (20) = happyShift action_37
action_19 (21) = happyShift action_38
action_19 (22) = happyShift action_39
action_19 (23) = happyShift action_40
action_19 (24) = happyShift action_41
action_19 (25) = happyShift action_42
action_19 (26) = happyShift action_43
action_19 (27) = happyShift action_44
action_19 (42) = happyShift action_45
action_19 (50) = happyShift action_76
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_70
action_20 (39) = happyShift action_71
action_20 (53) = happyShift action_72
action_20 (54) = happyShift action_73
action_20 (55) = happyShift action_74
action_20 (9) = happyGoto action_75
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_70
action_21 (39) = happyShift action_71
action_21 (53) = happyShift action_72
action_21 (54) = happyShift action_73
action_21 (55) = happyShift action_74
action_21 (9) = happyGoto action_69
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_26

action_23 _ = happyReduce_25

action_24 (40) = happyShift action_67
action_24 (41) = happyShift action_68
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_32

action_26 (33) = happyShift action_66
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (37) = happyShift action_65
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (33) = happyShift action_64
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (16) = happyShift action_33
action_29 (17) = happyShift action_34
action_29 (18) = happyShift action_35
action_29 (19) = happyShift action_36
action_29 (20) = happyShift action_37
action_29 (21) = happyShift action_38
action_29 (22) = happyShift action_39
action_29 (23) = happyShift action_40
action_29 (24) = happyShift action_41
action_29 (25) = happyShift action_42
action_29 (26) = happyShift action_43
action_29 (27) = happyShift action_44
action_29 (30) = happyShift action_63
action_29 (42) = happyShift action_45
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_17

action_31 _ = happyReduce_18

action_32 (10) = happyShift action_2
action_32 (11) = happyShift action_4
action_32 (12) = happyShift action_5
action_32 (13) = happyShift action_6
action_32 (14) = happyShift action_7
action_32 (15) = happyShift action_60
action_32 (16) = happyShift action_33
action_32 (17) = happyShift action_61
action_32 (18) = happyShift action_35
action_32 (19) = happyShift action_36
action_32 (20) = happyShift action_37
action_32 (21) = happyShift action_38
action_32 (22) = happyShift action_39
action_32 (23) = happyShift action_40
action_32 (24) = happyShift action_41
action_32 (25) = happyShift action_42
action_32 (26) = happyShift action_43
action_32 (27) = happyShift action_44
action_32 (28) = happyShift action_9
action_32 (29) = happyShift action_10
action_32 (32) = happyShift action_11
action_32 (36) = happyShift action_12
action_32 (39) = happyShift action_13
action_32 (41) = happyShift action_62
action_32 (42) = happyShift action_45
action_32 (44) = happyShift action_14
action_32 (45) = happyShift action_15
action_32 (46) = happyShift action_16
action_32 (47) = happyShift action_17
action_32 (49) = happyShift action_18
action_32 (4) = happyGoto action_59
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (10) = happyShift action_2
action_33 (11) = happyShift action_4
action_33 (12) = happyShift action_5
action_33 (13) = happyShift action_6
action_33 (14) = happyShift action_7
action_33 (17) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (29) = happyShift action_10
action_33 (32) = happyShift action_11
action_33 (36) = happyShift action_12
action_33 (39) = happyShift action_13
action_33 (44) = happyShift action_14
action_33 (45) = happyShift action_15
action_33 (46) = happyShift action_16
action_33 (47) = happyShift action_17
action_33 (49) = happyShift action_18
action_33 (4) = happyGoto action_58
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (10) = happyShift action_2
action_34 (11) = happyShift action_4
action_34 (12) = happyShift action_5
action_34 (13) = happyShift action_6
action_34 (14) = happyShift action_7
action_34 (17) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (29) = happyShift action_10
action_34 (32) = happyShift action_11
action_34 (36) = happyShift action_12
action_34 (39) = happyShift action_13
action_34 (44) = happyShift action_14
action_34 (45) = happyShift action_15
action_34 (46) = happyShift action_16
action_34 (47) = happyShift action_17
action_34 (49) = happyShift action_18
action_34 (4) = happyGoto action_57
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (10) = happyShift action_2
action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (17) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (29) = happyShift action_10
action_35 (32) = happyShift action_11
action_35 (36) = happyShift action_12
action_35 (39) = happyShift action_13
action_35 (44) = happyShift action_14
action_35 (45) = happyShift action_15
action_35 (46) = happyShift action_16
action_35 (47) = happyShift action_17
action_35 (49) = happyShift action_18
action_35 (4) = happyGoto action_56
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (10) = happyShift action_2
action_36 (11) = happyShift action_4
action_36 (12) = happyShift action_5
action_36 (13) = happyShift action_6
action_36 (14) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (29) = happyShift action_10
action_36 (32) = happyShift action_11
action_36 (36) = happyShift action_12
action_36 (39) = happyShift action_13
action_36 (44) = happyShift action_14
action_36 (45) = happyShift action_15
action_36 (46) = happyShift action_16
action_36 (47) = happyShift action_17
action_36 (49) = happyShift action_18
action_36 (4) = happyGoto action_55
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (10) = happyShift action_2
action_37 (11) = happyShift action_4
action_37 (12) = happyShift action_5
action_37 (13) = happyShift action_6
action_37 (14) = happyShift action_7
action_37 (17) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (29) = happyShift action_10
action_37 (32) = happyShift action_11
action_37 (36) = happyShift action_12
action_37 (39) = happyShift action_13
action_37 (44) = happyShift action_14
action_37 (45) = happyShift action_15
action_37 (46) = happyShift action_16
action_37 (47) = happyShift action_17
action_37 (49) = happyShift action_18
action_37 (4) = happyGoto action_54
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (10) = happyShift action_2
action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (14) = happyShift action_7
action_38 (17) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (29) = happyShift action_10
action_38 (32) = happyShift action_11
action_38 (36) = happyShift action_12
action_38 (39) = happyShift action_13
action_38 (44) = happyShift action_14
action_38 (45) = happyShift action_15
action_38 (46) = happyShift action_16
action_38 (47) = happyShift action_17
action_38 (49) = happyShift action_18
action_38 (4) = happyGoto action_53
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (10) = happyShift action_2
action_39 (11) = happyShift action_4
action_39 (12) = happyShift action_5
action_39 (13) = happyShift action_6
action_39 (14) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (29) = happyShift action_10
action_39 (32) = happyShift action_11
action_39 (36) = happyShift action_12
action_39 (39) = happyShift action_13
action_39 (44) = happyShift action_14
action_39 (45) = happyShift action_15
action_39 (46) = happyShift action_16
action_39 (47) = happyShift action_17
action_39 (49) = happyShift action_18
action_39 (4) = happyGoto action_52
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (10) = happyShift action_2
action_40 (11) = happyShift action_4
action_40 (12) = happyShift action_5
action_40 (13) = happyShift action_6
action_40 (14) = happyShift action_7
action_40 (17) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (29) = happyShift action_10
action_40 (32) = happyShift action_11
action_40 (36) = happyShift action_12
action_40 (39) = happyShift action_13
action_40 (44) = happyShift action_14
action_40 (45) = happyShift action_15
action_40 (46) = happyShift action_16
action_40 (47) = happyShift action_17
action_40 (49) = happyShift action_18
action_40 (4) = happyGoto action_51
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (10) = happyShift action_2
action_41 (11) = happyShift action_4
action_41 (12) = happyShift action_5
action_41 (13) = happyShift action_6
action_41 (14) = happyShift action_7
action_41 (17) = happyShift action_8
action_41 (28) = happyShift action_9
action_41 (29) = happyShift action_10
action_41 (32) = happyShift action_11
action_41 (36) = happyShift action_12
action_41 (39) = happyShift action_13
action_41 (44) = happyShift action_14
action_41 (45) = happyShift action_15
action_41 (46) = happyShift action_16
action_41 (47) = happyShift action_17
action_41 (49) = happyShift action_18
action_41 (4) = happyGoto action_50
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (10) = happyShift action_2
action_42 (11) = happyShift action_4
action_42 (12) = happyShift action_5
action_42 (13) = happyShift action_6
action_42 (14) = happyShift action_7
action_42 (17) = happyShift action_8
action_42 (28) = happyShift action_9
action_42 (29) = happyShift action_10
action_42 (32) = happyShift action_11
action_42 (36) = happyShift action_12
action_42 (39) = happyShift action_13
action_42 (44) = happyShift action_14
action_42 (45) = happyShift action_15
action_42 (46) = happyShift action_16
action_42 (47) = happyShift action_17
action_42 (49) = happyShift action_18
action_42 (4) = happyGoto action_49
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (10) = happyShift action_2
action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (14) = happyShift action_7
action_43 (17) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (29) = happyShift action_10
action_43 (32) = happyShift action_11
action_43 (36) = happyShift action_12
action_43 (39) = happyShift action_13
action_43 (44) = happyShift action_14
action_43 (45) = happyShift action_15
action_43 (46) = happyShift action_16
action_43 (47) = happyShift action_17
action_43 (49) = happyShift action_18
action_43 (4) = happyGoto action_48
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (10) = happyShift action_2
action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (17) = happyShift action_8
action_44 (28) = happyShift action_9
action_44 (29) = happyShift action_10
action_44 (32) = happyShift action_11
action_44 (36) = happyShift action_12
action_44 (39) = happyShift action_13
action_44 (44) = happyShift action_14
action_44 (45) = happyShift action_15
action_44 (46) = happyShift action_16
action_44 (47) = happyShift action_17
action_44 (49) = happyShift action_18
action_44 (4) = happyGoto action_47
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (12) = happyShift action_46
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (43) = happyShift action_95
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (16) = happyShift action_33
action_47 (17) = happyShift action_34
action_47 (18) = happyShift action_35
action_47 (19) = happyShift action_36
action_47 (20) = happyShift action_37
action_47 (21) = happyShift action_38
action_47 (22) = happyShift action_39
action_47 (23) = happyShift action_40
action_47 (24) = happyShift action_41
action_47 (25) = happyShift action_42
action_47 (26) = happyShift action_43
action_47 _ = happyReduce_16

action_48 (16) = happyShift action_33
action_48 (17) = happyShift action_34
action_48 (18) = happyShift action_35
action_48 (19) = happyShift action_36
action_48 (20) = happyShift action_37
action_48 (21) = happyShift action_38
action_48 (22) = happyShift action_39
action_48 (23) = happyShift action_40
action_48 (24) = happyShift action_41
action_48 (25) = happyShift action_42
action_48 _ = happyReduce_15

action_49 (16) = happyShift action_33
action_49 (17) = happyShift action_34
action_49 (18) = happyShift action_35
action_49 (19) = happyShift action_36
action_49 (20) = happyShift action_37
action_49 (21) = happyFail []
action_49 (22) = happyFail []
action_49 (23) = happyFail []
action_49 (24) = happyFail []
action_49 (25) = happyFail []
action_49 _ = happyReduce_14

action_50 (16) = happyShift action_33
action_50 (17) = happyShift action_34
action_50 (18) = happyShift action_35
action_50 (19) = happyShift action_36
action_50 (20) = happyShift action_37
action_50 (21) = happyFail []
action_50 (22) = happyFail []
action_50 (23) = happyFail []
action_50 (24) = happyFail []
action_50 (25) = happyFail []
action_50 _ = happyReduce_13

action_51 (16) = happyShift action_33
action_51 (17) = happyShift action_34
action_51 (18) = happyShift action_35
action_51 (19) = happyShift action_36
action_51 (20) = happyShift action_37
action_51 (21) = happyFail []
action_51 (22) = happyFail []
action_51 (23) = happyFail []
action_51 (24) = happyFail []
action_51 (25) = happyFail []
action_51 _ = happyReduce_12

action_52 (16) = happyShift action_33
action_52 (17) = happyShift action_34
action_52 (18) = happyShift action_35
action_52 (19) = happyShift action_36
action_52 (20) = happyShift action_37
action_52 (21) = happyFail []
action_52 (22) = happyFail []
action_52 (23) = happyFail []
action_52 (24) = happyFail []
action_52 (25) = happyFail []
action_52 _ = happyReduce_11

action_53 (16) = happyShift action_33
action_53 (17) = happyShift action_34
action_53 (18) = happyShift action_35
action_53 (19) = happyShift action_36
action_53 (20) = happyShift action_37
action_53 (21) = happyFail []
action_53 (22) = happyFail []
action_53 (23) = happyFail []
action_53 (24) = happyFail []
action_53 (25) = happyFail []
action_53 _ = happyReduce_10

action_54 _ = happyReduce_9

action_55 _ = happyReduce_8

action_56 _ = happyReduce_7

action_57 (18) = happyShift action_35
action_57 (19) = happyShift action_36
action_57 (20) = happyShift action_37
action_57 _ = happyReduce_6

action_58 (18) = happyShift action_35
action_58 (19) = happyShift action_36
action_58 (20) = happyShift action_37
action_58 _ = happyReduce_5

action_59 (15) = happyShift action_94
action_59 (16) = happyShift action_33
action_59 (17) = happyShift action_34
action_59 (18) = happyShift action_35
action_59 (19) = happyShift action_36
action_59 (20) = happyShift action_37
action_59 (21) = happyShift action_38
action_59 (22) = happyShift action_39
action_59 (23) = happyShift action_40
action_59 (24) = happyShift action_41
action_59 (25) = happyShift action_42
action_59 (26) = happyShift action_43
action_59 (27) = happyShift action_44
action_59 (42) = happyShift action_45
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_19

action_61 (10) = happyShift action_2
action_61 (11) = happyShift action_4
action_61 (12) = happyShift action_5
action_61 (13) = happyShift action_6
action_61 (14) = happyShift action_7
action_61 (17) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (29) = happyShift action_10
action_61 (32) = happyShift action_11
action_61 (36) = happyShift action_12
action_61 (39) = happyShift action_13
action_61 (44) = happyShift action_14
action_61 (45) = happyShift action_15
action_61 (46) = happyShift action_16
action_61 (47) = happyShift action_17
action_61 (49) = happyShift action_18
action_61 (4) = happyGoto action_93
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (10) = happyShift action_2
action_62 (11) = happyShift action_4
action_62 (12) = happyShift action_5
action_62 (13) = happyShift action_6
action_62 (14) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (28) = happyShift action_9
action_62 (29) = happyShift action_10
action_62 (32) = happyShift action_11
action_62 (36) = happyShift action_12
action_62 (39) = happyShift action_13
action_62 (44) = happyShift action_14
action_62 (45) = happyShift action_15
action_62 (46) = happyShift action_16
action_62 (47) = happyShift action_17
action_62 (49) = happyShift action_18
action_62 (4) = happyGoto action_92
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (10) = happyShift action_2
action_63 (11) = happyShift action_4
action_63 (12) = happyShift action_5
action_63 (13) = happyShift action_6
action_63 (14) = happyShift action_7
action_63 (17) = happyShift action_8
action_63 (28) = happyShift action_9
action_63 (29) = happyShift action_10
action_63 (32) = happyShift action_11
action_63 (36) = happyShift action_12
action_63 (39) = happyShift action_13
action_63 (44) = happyShift action_14
action_63 (45) = happyShift action_15
action_63 (46) = happyShift action_16
action_63 (47) = happyShift action_17
action_63 (49) = happyShift action_18
action_63 (4) = happyGoto action_91
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (10) = happyShift action_2
action_64 (11) = happyShift action_4
action_64 (12) = happyShift action_5
action_64 (13) = happyShift action_6
action_64 (14) = happyShift action_7
action_64 (17) = happyShift action_8
action_64 (28) = happyShift action_9
action_64 (29) = happyShift action_10
action_64 (32) = happyShift action_11
action_64 (36) = happyShift action_12
action_64 (39) = happyShift action_13
action_64 (44) = happyShift action_14
action_64 (45) = happyShift action_15
action_64 (46) = happyShift action_16
action_64 (47) = happyShift action_17
action_64 (49) = happyShift action_18
action_64 (4) = happyGoto action_90
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (10) = happyShift action_2
action_65 (11) = happyShift action_4
action_65 (12) = happyShift action_5
action_65 (13) = happyShift action_6
action_65 (14) = happyShift action_7
action_65 (17) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (29) = happyShift action_10
action_65 (32) = happyShift action_11
action_65 (36) = happyShift action_12
action_65 (39) = happyShift action_13
action_65 (44) = happyShift action_14
action_65 (45) = happyShift action_15
action_65 (46) = happyShift action_16
action_65 (47) = happyShift action_17
action_65 (49) = happyShift action_18
action_65 (4) = happyGoto action_89
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (10) = happyShift action_2
action_66 (11) = happyShift action_4
action_66 (12) = happyShift action_5
action_66 (13) = happyShift action_6
action_66 (14) = happyShift action_7
action_66 (17) = happyShift action_8
action_66 (28) = happyShift action_9
action_66 (29) = happyShift action_10
action_66 (32) = happyShift action_11
action_66 (36) = happyShift action_12
action_66 (39) = happyShift action_13
action_66 (44) = happyShift action_14
action_66 (45) = happyShift action_15
action_66 (46) = happyShift action_16
action_66 (47) = happyShift action_17
action_66 (49) = happyShift action_18
action_66 (4) = happyGoto action_88
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_30

action_68 (12) = happyShift action_26
action_68 (6) = happyGoto action_87
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (14) = happyShift action_86
action_69 (16) = happyShift action_79
action_69 (18) = happyShift action_80
action_69 (37) = happyShift action_81
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (14) = happyShift action_70
action_70 (39) = happyShift action_71
action_70 (53) = happyShift action_72
action_70 (54) = happyShift action_73
action_70 (55) = happyShift action_74
action_70 (9) = happyGoto action_85
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (12) = happyShift action_84
action_71 (7) = happyGoto action_82
action_71 (8) = happyGoto action_83
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_39

action_73 _ = happyReduce_40

action_74 _ = happyReduce_38

action_75 (14) = happyShift action_78
action_75 (16) = happyShift action_79
action_75 (18) = happyShift action_80
action_75 (37) = happyShift action_81
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (39) = happyShift action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (47) = happyShift action_108
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (10) = happyShift action_2
action_78 (11) = happyShift action_4
action_78 (12) = happyShift action_5
action_78 (13) = happyShift action_6
action_78 (14) = happyShift action_7
action_78 (17) = happyShift action_8
action_78 (28) = happyShift action_9
action_78 (29) = happyShift action_10
action_78 (32) = happyShift action_11
action_78 (36) = happyShift action_12
action_78 (39) = happyShift action_13
action_78 (44) = happyShift action_14
action_78 (45) = happyShift action_15
action_78 (46) = happyShift action_16
action_78 (47) = happyShift action_17
action_78 (49) = happyShift action_18
action_78 (4) = happyGoto action_107
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (14) = happyShift action_70
action_79 (39) = happyShift action_71
action_79 (53) = happyShift action_72
action_79 (54) = happyShift action_73
action_79 (55) = happyShift action_74
action_79 (9) = happyGoto action_106
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (14) = happyShift action_70
action_80 (39) = happyShift action_71
action_80 (53) = happyShift action_72
action_80 (54) = happyShift action_73
action_80 (55) = happyShift action_74
action_80 (9) = happyGoto action_105
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (14) = happyShift action_70
action_81 (39) = happyShift action_71
action_81 (53) = happyShift action_72
action_81 (54) = happyShift action_73
action_81 (55) = happyShift action_74
action_81 (9) = happyGoto action_104
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (40) = happyShift action_102
action_82 (41) = happyShift action_103
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_35

action_84 (38) = happyShift action_101
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (15) = happyShift action_100
action_85 (16) = happyShift action_79
action_85 (18) = happyShift action_80
action_85 (37) = happyShift action_81
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (10) = happyShift action_2
action_86 (11) = happyShift action_4
action_86 (12) = happyShift action_5
action_86 (13) = happyShift action_6
action_86 (14) = happyShift action_7
action_86 (17) = happyShift action_8
action_86 (28) = happyShift action_9
action_86 (29) = happyShift action_10
action_86 (32) = happyShift action_11
action_86 (36) = happyShift action_12
action_86 (39) = happyShift action_13
action_86 (44) = happyShift action_14
action_86 (45) = happyShift action_15
action_86 (46) = happyShift action_16
action_86 (47) = happyShift action_17
action_86 (49) = happyShift action_18
action_86 (4) = happyGoto action_99
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_33

action_88 (16) = happyShift action_33
action_88 (17) = happyShift action_34
action_88 (18) = happyShift action_35
action_88 (19) = happyShift action_36
action_88 (20) = happyShift action_37
action_88 (21) = happyShift action_38
action_88 (22) = happyShift action_39
action_88 (23) = happyShift action_40
action_88 (24) = happyShift action_41
action_88 (25) = happyShift action_42
action_88 (26) = happyShift action_43
action_88 (27) = happyShift action_44
action_88 (42) = happyShift action_45
action_88 _ = happyReduce_34

action_89 (16) = happyShift action_33
action_89 (17) = happyShift action_34
action_89 (18) = happyShift action_35
action_89 (19) = happyShift action_36
action_89 (20) = happyShift action_37
action_89 (21) = happyShift action_38
action_89 (22) = happyShift action_39
action_89 (23) = happyShift action_40
action_89 (24) = happyShift action_41
action_89 (25) = happyShift action_42
action_89 (26) = happyShift action_43
action_89 (27) = happyShift action_44
action_89 (42) = happyShift action_45
action_89 _ = happyReduce_23

action_90 (16) = happyShift action_33
action_90 (17) = happyShift action_34
action_90 (18) = happyShift action_35
action_90 (19) = happyShift action_36
action_90 (20) = happyShift action_37
action_90 (21) = happyShift action_38
action_90 (22) = happyShift action_39
action_90 (23) = happyShift action_40
action_90 (24) = happyShift action_41
action_90 (25) = happyShift action_42
action_90 (26) = happyShift action_43
action_90 (27) = happyShift action_44
action_90 (34) = happyShift action_98
action_90 (42) = happyShift action_45
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (16) = happyShift action_33
action_91 (17) = happyShift action_34
action_91 (18) = happyShift action_35
action_91 (19) = happyShift action_36
action_91 (20) = happyShift action_37
action_91 (21) = happyShift action_38
action_91 (22) = happyShift action_39
action_91 (23) = happyShift action_40
action_91 (24) = happyShift action_41
action_91 (25) = happyShift action_42
action_91 (26) = happyShift action_43
action_91 (27) = happyShift action_44
action_91 (31) = happyShift action_97
action_91 (42) = happyShift action_45
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (15) = happyShift action_96
action_92 (16) = happyShift action_33
action_92 (17) = happyShift action_34
action_92 (18) = happyShift action_35
action_92 (19) = happyShift action_36
action_92 (20) = happyShift action_37
action_92 (21) = happyShift action_38
action_92 (22) = happyShift action_39
action_92 (23) = happyShift action_40
action_92 (24) = happyShift action_41
action_92 (25) = happyShift action_42
action_92 (26) = happyShift action_43
action_92 (27) = happyShift action_44
action_92 (42) = happyShift action_45
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (15) = happyReduce_18
action_93 (16) = happyReduce_18
action_93 (17) = happyReduce_18
action_93 (18) = happyReduce_18
action_93 (19) = happyReduce_18
action_93 (20) = happyReduce_18
action_93 (21) = happyReduce_18
action_93 (22) = happyReduce_18
action_93 (23) = happyReduce_18
action_93 (24) = happyReduce_18
action_93 (25) = happyReduce_18
action_93 (26) = happyReduce_18
action_93 (27) = happyReduce_18
action_93 (42) = happyReduce_18
action_93 _ = happyReduce_6

action_94 _ = happyReduce_20

action_95 _ = happyReduce_31

action_96 _ = happyReduce_24

action_97 (10) = happyShift action_2
action_97 (11) = happyShift action_4
action_97 (12) = happyShift action_5
action_97 (13) = happyShift action_6
action_97 (14) = happyShift action_7
action_97 (17) = happyShift action_8
action_97 (28) = happyShift action_9
action_97 (29) = happyShift action_10
action_97 (32) = happyShift action_11
action_97 (36) = happyShift action_12
action_97 (39) = happyShift action_13
action_97 (44) = happyShift action_14
action_97 (45) = happyShift action_15
action_97 (46) = happyShift action_16
action_97 (47) = happyShift action_17
action_97 (49) = happyShift action_18
action_97 (4) = happyGoto action_115
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (10) = happyShift action_2
action_98 (11) = happyShift action_4
action_98 (12) = happyShift action_5
action_98 (13) = happyShift action_6
action_98 (14) = happyShift action_7
action_98 (17) = happyShift action_8
action_98 (28) = happyShift action_9
action_98 (29) = happyShift action_10
action_98 (32) = happyShift action_11
action_98 (36) = happyShift action_12
action_98 (39) = happyShift action_13
action_98 (44) = happyShift action_14
action_98 (45) = happyShift action_15
action_98 (46) = happyShift action_16
action_98 (47) = happyShift action_17
action_98 (49) = happyShift action_18
action_98 (4) = happyGoto action_114
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (15) = happyShift action_113
action_99 (16) = happyShift action_33
action_99 (17) = happyShift action_34
action_99 (18) = happyShift action_35
action_99 (19) = happyShift action_36
action_99 (20) = happyShift action_37
action_99 (21) = happyShift action_38
action_99 (22) = happyShift action_39
action_99 (23) = happyShift action_40
action_99 (24) = happyShift action_41
action_99 (25) = happyShift action_42
action_99 (26) = happyShift action_43
action_99 (27) = happyShift action_44
action_99 (42) = happyShift action_45
action_99 _ = happyFail (happyExpListPerState 99)

action_100 _ = happyReduce_45

action_101 (14) = happyShift action_70
action_101 (39) = happyShift action_71
action_101 (53) = happyShift action_72
action_101 (54) = happyShift action_73
action_101 (55) = happyShift action_74
action_101 (9) = happyGoto action_112
action_101 _ = happyFail (happyExpListPerState 101)

action_102 _ = happyReduce_44

action_103 (12) = happyShift action_84
action_103 (8) = happyGoto action_111
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (16) = happyShift action_79
action_104 (18) = happyShift action_80
action_104 (37) = happyShift action_81
action_104 _ = happyReduce_41

action_105 _ = happyReduce_42

action_106 (18) = happyShift action_80
action_106 _ = happyReduce_43

action_107 (15) = happyShift action_110
action_107 (16) = happyShift action_33
action_107 (17) = happyShift action_34
action_107 (18) = happyShift action_35
action_107 (19) = happyShift action_36
action_107 (20) = happyShift action_37
action_107 (21) = happyShift action_38
action_107 (22) = happyShift action_39
action_107 (23) = happyShift action_40
action_107 (24) = happyShift action_41
action_107 (25) = happyShift action_42
action_107 (26) = happyShift action_43
action_107 (27) = happyShift action_44
action_107 (42) = happyShift action_45
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (12) = happyShift action_109
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (51) = happyShift action_117
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_27

action_111 _ = happyReduce_36

action_112 (16) = happyShift action_79
action_112 (18) = happyShift action_80
action_112 (37) = happyShift action_81
action_112 _ = happyReduce_37

action_113 _ = happyReduce_28

action_114 (16) = happyShift action_33
action_114 (17) = happyShift action_34
action_114 (18) = happyShift action_35
action_114 (19) = happyShift action_36
action_114 (20) = happyShift action_37
action_114 (21) = happyShift action_38
action_114 (22) = happyShift action_39
action_114 (23) = happyShift action_40
action_114 (24) = happyShift action_41
action_114 (25) = happyShift action_42
action_114 (26) = happyShift action_43
action_114 (27) = happyShift action_44
action_114 (35) = happyShift action_116
action_114 (42) = happyShift action_45
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (16) = happyShift action_33
action_115 (17) = happyShift action_34
action_115 (18) = happyShift action_35
action_115 (19) = happyShift action_36
action_115 (20) = happyShift action_37
action_115 (21) = happyShift action_38
action_115 (22) = happyShift action_39
action_115 (23) = happyShift action_40
action_115 (24) = happyShift action_41
action_115 (25) = happyShift action_42
action_115 (26) = happyShift action_43
action_115 (27) = happyShift action_44
action_115 (42) = happyShift action_45
action_115 _ = happyReduce_21

action_116 _ = happyReduce_22

action_117 (10) = happyShift action_2
action_117 (11) = happyShift action_4
action_117 (12) = happyShift action_5
action_117 (13) = happyShift action_6
action_117 (14) = happyShift action_7
action_117 (17) = happyShift action_8
action_117 (28) = happyShift action_9
action_117 (29) = happyShift action_10
action_117 (32) = happyShift action_11
action_117 (36) = happyShift action_12
action_117 (39) = happyShift action_13
action_117 (44) = happyShift action_14
action_117 (45) = happyShift action_15
action_117 (46) = happyShift action_16
action_117 (47) = happyShift action_17
action_117 (49) = happyShift action_18
action_117 (4) = happyGoto action_118
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (16) = happyShift action_33
action_118 (17) = happyShift action_34
action_118 (18) = happyShift action_35
action_118 (19) = happyShift action_36
action_118 (20) = happyShift action_37
action_118 (21) = happyShift action_38
action_118 (22) = happyShift action_39
action_118 (23) = happyShift action_40
action_118 (24) = happyShift action_41
action_118 (25) = happyShift action_42
action_118 (26) = happyShift action_43
action_118 (27) = happyShift action_44
action_118 (42) = happyShift action_45
action_118 (52) = happyShift action_119
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (46) = happyShift action_120
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (12) = happyShift action_121
action_120 _ = happyFail (happyExpListPerState 120)

action_121 (51) = happyShift action_122
action_121 _ = happyFail (happyExpListPerState 121)

action_122 (10) = happyShift action_2
action_122 (11) = happyShift action_4
action_122 (12) = happyShift action_5
action_122 (13) = happyShift action_6
action_122 (14) = happyShift action_7
action_122 (17) = happyShift action_8
action_122 (28) = happyShift action_9
action_122 (29) = happyShift action_10
action_122 (32) = happyShift action_11
action_122 (36) = happyShift action_12
action_122 (39) = happyShift action_13
action_122 (44) = happyShift action_14
action_122 (45) = happyShift action_15
action_122 (46) = happyShift action_16
action_122 (47) = happyShift action_17
action_122 (49) = happyShift action_18
action_122 (4) = happyGoto action_123
action_122 _ = happyFail (happyExpListPerState 122)

action_123 (16) = happyShift action_33
action_123 (17) = happyShift action_34
action_123 (18) = happyShift action_35
action_123 (19) = happyShift action_36
action_123 (20) = happyShift action_37
action_123 (21) = happyShift action_38
action_123 (22) = happyShift action_39
action_123 (23) = happyShift action_40
action_123 (24) = happyShift action_41
action_123 (25) = happyShift action_42
action_123 (26) = happyShift action_43
action_123 (27) = happyShift action_44
action_123 (40) = happyShift action_124
action_123 (42) = happyShift action_45
action_123 _ = happyFail (happyExpListPerState 123)

action_124 _ = happyReduce_29

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyTerminal (TokenFloat happy_var_1))
	 =  HappyAbsSyn4
		 (Float happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (ArithOp Plus) happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (ArithOp Minus) happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (ArithOp Times) happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (ArithOp Div) happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (ArithOp Mod) happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (CompOp Eq) happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (CompOp Gt) happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (CompOp Lt) happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (CompOp Geq) happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (CompOp Leq) happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (LogicalOp And) happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (BinaryOp (LogicalOp Or) happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (UnaryOp Not happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (UnaryOp Negate happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 4 4 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (App happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 7 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 4 4 happyReduction_23
happyReduction_23 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lambda happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_2  4 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Fst happy_var_2
	)
happyReduction_25 _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  4 happyReduction_26
happyReduction_26 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Snd happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happyReduce 6 4 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Inl happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 6 4 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Inr happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 14 4 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_13) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_11)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_6)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Case happy_var_2 happy_var_6 happy_var_8 happy_var_11 happy_var_13
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_3  4 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Record happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 4 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_3)) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Prj happy_var_3 happy_var_1
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_1  5 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  5 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_3 : happy_var_1
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn6
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  7 happyReduction_35
happyReduction_35 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  7 happyReduction_36
happyReduction_36 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  8 happyReduction_37
happyReduction_37 (HappyAbsSyn9  happy_var_3)
	_
	(HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn8
		 ((happy_var_1 , happy_var_3)
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  9 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn9
		 (TBool
	)

happyReduce_39 = happySpecReduce_1  9 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn9
		 (TInt
	)

happyReduce_40 = happySpecReduce_1  9 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn9
		 (TFloat
	)

happyReduce_41 = happySpecReduce_3  9 happyReduction_41
happyReduction_41 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (TFunc happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  9 happyReduction_42
happyReduction_42 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (TProd happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  9 happyReduction_43
happyReduction_43 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (TSum happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  9 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (TRecord happy_var_2
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_3  9 happyReduction_45
happyReduction_45 _
	(HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt happy_dollar_dollar -> cont 10;
	TokenFloat happy_dollar_dollar -> cont 11;
	TokenVar happy_dollar_dollar -> cont 12;
	TokenBool happy_dollar_dollar -> cont 13;
	TokenOB -> cont 14;
	TokenCB -> cont 15;
	TokenPlus -> cont 16;
	TokenMinus -> cont 17;
	TokenTimes -> cont 18;
	TokenDiv -> cont 19;
	TokenMod -> cont 20;
	TokenEq -> cont 21;
	TokenGt -> cont 22;
	TokenLt -> cont 23;
	TokenGeq -> cont 24;
	TokenLeq -> cont 25;
	TokenAnd -> cont 26;
	TokenOr -> cont 27;
	TokenNot -> cont 28;
	TokenIf -> cont 29;
	TokenThen -> cont 30;
	TokenElse -> cont 31;
	TokenLet -> cont 32;
	TokenAssign -> cont 33;
	TokenIn -> cont 34;
	TokenEnd -> cont 35;
	TokenLam -> cont 36;
	TokenArrow -> cont 37;
	TokenTypeOf -> cont 38;
	TokenOK -> cont 39;
	TokenCK -> cont 40;
	TokenComma -> cont 41;
	TokenOC -> cont 42;
	TokenCC -> cont 43;
	TokenFst -> cont 44;
	TokenSnd -> cont 45;
	TokenInr -> cont 46;
	TokenInL -> cont 47;
	TokenUnderS -> cont 48;
	TokenCase -> cont 49;
	TokenOf -> cont 50;
	TokenBigArrow -> cont 51;
	TokenPipe -> cont 52;
	TokenTInt -> cont 53;
	TokenTFloat -> cont 54;
	TokenTBool -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError ts = error ("Parse error" ++ (show ts))
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
