abstract Examples = Sentences, Proofs ** {
    flags
        startcat = ExampleBl ;
    cat
        ExampleBl ;
        Assumption ;
        [Assumption]{0} ;
        ExampleStm ;
    fun
        Example : [Assumption] -> ExampleStm -> Proof -> ExampleBl ;

        Pred_ExampleStm : Pred -> ExampleStm ; -- The main statement of the example is always a predicate

        Pred_Assump : HypVar -> Pred -> Assumption ; -- Two kinds of assumptions
        TypeDefs_Assump : TypeDefs -> Assumption ;

}