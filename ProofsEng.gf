concrete ProofsEng of Proofs = SentencesEng ** open Prelude in {
    lincat
        Proof = SS ;
        ProofLine = SS ;
        ListProofLine = SS ;

    lin
        BaseProofLine stm = ss (stm.s ++ ".") ;
        
        ConsProofLine line Lline = {s = line.s ++ "." ++ Lline.s} ;

        mkProof Lline = {s = "Proof:" ++ Lline.s ++ "QED."};

        TcIntro var = {s = "Assume" ++ var.s ++ "is an X"};
        TcAssume var stm = {s = "Assume" ++ stm.s};
        TcAssumption = ss "Hence, we are done";
        TcHave var stm1 stm2 = {s = "As" ++ stm2.s ++ ", so" ++ stm1.s};

}