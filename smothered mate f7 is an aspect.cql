/* Tries to detect cases where smothered mate on f7 is an aspect of the position */

cql()

flipcolor {
    {result 1-0} btm {movenumber<21}
    pg7 ph7 _f7 kg8
    {ray northeast (Q g8)} {not Q attackedby a}
    {g8 attackedby r} {not rh8}
    {f7 attackedby N} {not f7 attackedby [qbn]}
}
