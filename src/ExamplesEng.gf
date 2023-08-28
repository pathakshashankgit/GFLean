concrete ExamplesEng of Examples = SentencesEng, ProofsEng ** open Prelude in {
    lincat
        ExampleBl = SS ;
        Assumption = SS ;
        ListAssumption = SS ;
        ExampleStm = SS ;
    lin
        BaseAssumption = ss "";
        ConsAssumption ass Lass = ss (ass.s ++ Lass.s) ;

        Example Lass stm pf = {s = "Example." ++ Lass.s ++ stm.s ++ pf.s} ;  

        Pred_ExampleStm pred = ss ("Then" ++ pred.s ++ ".") ;

        Pred_Assump hypvar stm = ss ("Assume" ++ stm.s ++ ".");
        TypeDefs_Assump td = ss ("Assume" ++ td.s ++ ".");
        
}