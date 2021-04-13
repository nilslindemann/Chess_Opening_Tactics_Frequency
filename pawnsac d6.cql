cql()

flipcolor {
    {result 1-0}
    line --> {
        wtm {movenumber < 21} { power A <= power a + 1 }
        Pd5 {not Pc5} {not Pe5}
        pd7 {
            { pe7 {not pc7} }
            or
            { {not pe7} pc7 }
        }
    } --> Pd6 --> {
        pd6
        { #{a attacks d6} >= #{A attacks d6} }
    }
}
