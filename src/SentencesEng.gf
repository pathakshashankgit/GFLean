concrete SentencesEng of Sentences = open Prelude, Basic, SyntaxEng, ParadigmsEng in {
    lincat
        SetVar = SS ;
        ElemVar = SS ;
        TypeVar = SS ;
        Types = SS ;
        Sets = SS ** {isSimple : Bool} ;
        APreds = SS ;
        Pred = SS ;
        TypeDefs = SS;
        HypVar = SS;

    lin
        -- Ways of constructing Lean Types
        TypeVar_Types tv = tv;
        set tv = ss ("set on" ++ tv.s) ;

        -- Ways of making sets
        Var_Sets sv = {s = sv.s ; isSimple = True } ;
        Union s1 s2 = {s = 
            (if_then_else Str s1.isSimple s1.s (paren s1.s)) ++ "∪" ++ (if_then_else Str s2.isSimple s2.s (paren s2.s));
            
            isSimple = False } ;
        --Intersection s1 s2 = ss (s1.s ++ "∩" ++ s2.s);
        Complement s = {s = (if_then_else Str s.isSimple s.s (paren s.s)) ++ "ᶜ"; isSimple = True };

        -- Ways of making TypeDefs
        ForSets sv tp = ss (sv.s ++ "is a" ++ tp.s);
        ForElements ev tp = ss (ev.s ++ "has type" ++ tp.s) ;

        -- Ways of making atomic predicates
        Belongs ev s = ss (ev.s ++ "∈" ++ s.s) ;
        Subset s1 s2 = ss (s1.s ++ "⊆" ++ s2.s) ;

        -- Ways of making Preds
        APreds_Preds apr = apr ;
        And p1 p2 = ss (p1.s ++ "∧" ++ p2.s);
        Exists ev p = ss ("∃" ++ ev.s ++ "," ++ p.s);


        -- Lexicon
        A = ss "A";
        x = ss "x";
        X = ss "X";
        h1 = ss "h1";
}