abstract Sentences = {
    flags
        startcat = Pred ;
    cat 
        SetVar ;
        ElemVar ;
        TypeVar ;
        HypVar ; -- Variables for Proof terms

        Types ; -- all kinds of Lean types, like X and set X
        Sets ; -- all sets
        APreds ; -- atomic predicates
        Pred ; -- atomic and complex predicates, they and type definitions together constitute statements
        TypeDefs ; -- for x : X
        
    fun
        -- Ways of constructing Lean Types, like X or set X
        TypeVar_Types : TypeVar -> Types ;
        set : TypeVar -> Types ;

        -- Ways of making sets
        Var_Sets : SetVar -> Sets ;
        Union : Sets -> Sets -> Sets ;
        Complement : Sets -> Sets ;
        Intersection : Sets -> Sets -> Sets ;

        -- Ways of making TypeDefs
        ForSets : SetVar -> Types -> TypeDefs ;
        ForElements : ElemVar -> Types -> TypeDefs ;

        -- Ways of making atomic predicates
        Belongs : ElemVar -> Sets -> APreds ; -- Elemvar \in Sets
        Subset : Sets -> Sets -> APreds ;
        Equals : Sets -> Sets -> APreds ;
        
        
        -- Ways of making Preds
        APreds_Preds : APreds -> Pred ;
        And : Pred -> Pred -> Pred ;
        Or : Pred -> Pred -> Pred ;
        Neg : Pred -> Pred ;
        Iff : Pred -> Pred -> Pred ;
        Implies : Pred -> Pred -> Pred ;
        ForAll : ElemVar -> Pred -> Pred ;
        Exists : ElemVar -> Pred -> Pred ;

-- Lexicon
    A, B, C, D : SetVar ;
    x, y, s, t : ElemVar ;
    X : TypeVar ;
    h1 : HypVar ;
}