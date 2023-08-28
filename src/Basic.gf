resource Basic = {
    oper
        concat : {s : Str} -> {s : Str} -> {s : Str} = \s1,s2 -> {s = s1.s ++ s2.s};
}