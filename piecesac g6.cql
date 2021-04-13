cql()

flipcolor {
    {result 1-0}
    line --> {
        wtm {movenumber < 21} { power A <= power a + 1 }
        pg6 {
            { pf7 {not ph7} }
            or
            { {not pf7} ph7 }
        }
    } --> [QRBN]g6 {
        not {
            pin through {if pf7 then f7 else h7} to k
        }
    }
}
