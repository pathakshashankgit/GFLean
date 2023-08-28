abstract Proofs = Sentences ** {
    flags
        startcat = Proof ;
    cat
        Proof ;
        ProofLine ;
        [ProofLine]{1} ;

    fun
        -- Proof wrapper
        mkProof : [ProofLine] -> Proof ;

        -- Various Lines constructors
        -- Each of them stand for a tactic
        TcIntro : ElemVar -> ProofLine ;

        TcAssume : HypVar -> Pred -> ProofLine ;
        TcAssumption : ProofLine ;
        TcHave : HypVar -> Pred -> Pred -> ProofLine ;

}