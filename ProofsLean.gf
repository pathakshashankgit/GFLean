concrete ProofsLean of Proofs = SentencesLean ** open Prelude in {
    lincat
        Proof = SS ;
        ProofLine = SS ;
        ListProofLine = SS ;

    lin
        BaseProofLine stm = ss (stm.s ++ ",") ;
        
        ConsProofLine line Lline = {s = line.s ++ "," ++ Lline.s} ;

        mkProof Lline = {s = "begin" ++ Lline.s ++ "end"};

        TcIntro var = {s = "intro" ++ var.s};
        TcAssume var stm = {s = "assume" ++ var.s ++ ":" ++ stm.s};
        TcAssumption = ss "assumption";
        TcHave var stm1 stm2 = {s = "have" ++ var.s ++ ":" ++ stm1.s ++ ":= sorry"};

}