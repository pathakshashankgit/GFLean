concrete SentencesLean of Sentences = open Prelude, Basic in {
    lincat
        SetVar = SS ;
        ElemVar = SS ;
        TypeVar = SS ;
        Types = SS ;
        Sets = SS ;
        APreds = SS ;
        Pred = SS ;
        TypeDefs = SS;
        HypVar = SS ;

    lin
        -- Ways of constructing Lean Types
        TypeVar_Types tv = tv;
        set tv = ss ("set" ++ tv.s) ;

        -- Ways of making sets
        Var_Sets sv = sv ;
        Union s1 s2 = ss (s1.s ++ "∪" ++ s2.s);
        --Intersection s1 s2 = ss (s1.s ++ "∩" ++ s2.s);
        Complement s = ss (s.s ++ "ᶜ");

        -- Ways of making TypeDefs
        ForSets sv tp = ss (sv.s ++ ":" ++ tp.s);
        ForElements ev tp = ss (ev.s ++ ":" ++ tp.s) ;

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