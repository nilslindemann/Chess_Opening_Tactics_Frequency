cql()

flipcolor {
    {result 1-0}
    line --> {
        wtm {movenumber < 21} { power A <= power a + 1 }
        Pe5 {not Pf5} {not Pd5}
        pe7 {
            { pd7 {not pf7} }
            or
            { {not pd7} pf7 }
        }
    } --> Pe6 --> {
        pe6
        { #{a attacks e6} >= #{A attacks e6} }
    }
}
