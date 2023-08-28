concrete SentencesLean of Sentences = open Prelude, Basic in {
    lincat
        SetVar = SS ;
        ElemVar = SS ;
        TypeVar = SS ;
        Types = SS ;
        Sets = SS ** {isSimple : Bool} ;
        APreds = SS ;
        Pred = SS ;
        TypeDefs = SS;
        HypVar = SS ;

    lin
        -- Ways of constructing Lean Types
        TypeVar_Types tv = tv;
        set tv = ss ("set" ++ tv.s) ;

        -- Ways of making sets
        Var_Sets sv = {s = sv.s ; isSimple = True } ;
        Union s1 s2 = {s = 
            (if_then_else Str s1.isSimple s1.s (paren s1.s)) ++ "∪" ++ (if_then_else Str s2.isSimple s2.s (paren s2.s));
            
            isSimple = False } ;
        
        Complement s = {s = (if_then_else Str s.isSimple s.s (paren s.s)) ++ "ᶜ"; isSimple = True };

        Intersection s1 s2 = {s = 
            (if_then_else Str s1.isSimple s1.s (paren s1.s)) ++ "∩" ++ (if_then_else Str s2.isSimple s2.s (paren s2.s));
            
            isSimple = False } ;

        -- Ways of making TypeDefs
        ForSets sv tp = ss (sv.s ++ ":" ++ tp.s);
        ForElements ev tp = ss (ev.s ++ ":" ++ tp.s) ;

        -- Ways of making atomic predicates
        Belongs ev s = ss (ev.s ++ "∈" ++ s.s) ;
        Subset s1 s2 = ss (s1.s ++ "⊆" ++ s2.s) ;
        Equals s1 s2 = ss (s1.s ++ "=" ++ s2.s) ;

        -- Ways of making Preds
        APreds_Preds apr = apr ;
        And p1 p2 = ss (p1.s ++ "∧" ++ p2.s);
        Or p1 p2 = ss (p1.s ++ "∨" ++ p2.s) ;
        Neg p1 = ss ("¬" ++ p1.s) ;
        Iff p1 p2 = ss (p1.s ++ "↔" ++ p2.s) ;
        Implies p1 p2 = ss (p1.s ++ "→" ++ p2.s) ;
        ForAll ev p = ss ("∀" ++ ev.s ++ "," ++ p.s) ; 
        Exists ev p = ss ("∃" ++ ev.s ++ "," ++ p.s);
        

        -- Lexicon
        A = ss "A" ;
        B = ss "B" ;
        C = ss "C" ;
        D = ss "D" ;

        x = ss "x" ;
        y = ss "y" ;
        s = ss "s" ;
        t = ss "t" ;
        
        X = ss "X";
        h1 = ss "h1";
}