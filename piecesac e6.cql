cql()

flipcolor {
    {result 1-0}
    line --> {
        wtm {movenumber < 21} { power A <= power a + 1 }
        pe6 {
            { pf7 {not pd7} }
            or
            { {not pf7} pd7 }
        }
    } --> [QRBN]e6 {
        not {
            pin through {if pf7 then f7 else d7} to k
        }
    }
}
