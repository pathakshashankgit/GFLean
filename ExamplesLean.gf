concrete ExamplesLean of Examples = SentencesLean, ProofsLean ** open Prelude, Basic in {
    lincat
        ExampleBl = SS ;
        Assumption = SS ;
        ListAssumption = SS ;
        ExampleStm = SS ;
    lin
        BaseAssumption = ss "";
        ConsAssumption ass Lass = ss (ass.s ++ Lass.s) ;

        Example Lass stm pf = {s = "example" ++ Lass.s ++ ":" ++ stm.s ++ ":=" ++ pf.s} ;  

        Pred_ExampleStm pred = pred ;

        Pred_Assump hypvar stm = ss (paren (hypvar.s ++ ":" ++ stm.s));
        TypeDefs_Assump td = ss (paren td.s);
        
}