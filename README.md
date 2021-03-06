# Chess Opening Tactics Frequency

[How often do specific tactical themes happen in chess openings](https://chess.stackexchange.com/questions/34683/most-common-tactic-motifs-in-the-opening-phase-of-chess)?

Of course that question can not be answered precisely, because tactical motifs in chess are not clearly defined and often interweaved.

But we can guess, and in order to do so, I wrote some [CQL](http://gadycosteff.com/cql/) scripts which define some patterns, which are often seen in the opening phase. Using the scripts i then searched in a [PGN](https://en.wikipedia.org/wiki/Portable_Game_Notation) database with 372,000 [GM](https://en.wikipedia.org/wiki/Grandmaster_(chess)) games. The search was done within the first twenty moves of each game - the opening phase. Most games fit the themes quite well, though there are some false positives. But i wanted to keep the scripts simple.

Here is what i got:

Theme|Example for the theme|N. o. games found
:---|:---|---:
[Piece sacrifice f7](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piece%20sac%20f7.cql) | [Mahescandra - Cochrane, Kolkata 1850](https://lichess.org/dj70pPyz#37) | 741
[Knight sacrifice d5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/knight%20sac%20d5.cql) | [Kasparov - Salov, Barcelona 1989](https://lichess.org/Op4VDhtF#22) | 679
[Piece sacrifice b5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piece%20sac%20b5.cql) | [Morphy - Isouard, Paris 1858](https://lichess.org/sayPmXB3#18) | 573
[Piece sacrifice e6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piecesac%20e6.cql) | [Tal - Chikovani, Gori 1968](https://lichess.org/78Qe3YyJ#36) | 552
[Piece sacrifice h6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piecesac%20h6.cql) | [Fisher - Steinitz, England 1872](https://lichess.org/TNWsLQEg/black#29) | 549
[Piece sacrifice g5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piece%20sac%20g5.cql) | [Mahescandra - Cochrane, Kolkata 1850](https://lichess.org/FijXBBEv/black#17) | 494
[Knight sacrifice f7](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/knight%20sac%20f7.cql) | [Bareev - Sakaev, Moscow 2001](https://lichess.org/5HRQvPuA#36) | 387
[Piece sacrifice g6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/piecesac%20g6.cql) | [Kramnik - Lautier, Tilburg 1998](https://lichess.org/jye9gBoi#36) | 358
[Bishop sacrifice f7](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/bishop%20sac%20f7.cql) | [Morphy - Muarian, New Orleans 1866](https://lichess.org/BaqxSr7Y#12) | 302
[Knight sacrifice f5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/knight%20sac%20f5.cql) | [Spassky - Van Oosterom, Antwerp 1955](https://lichess.org/K6w16ky4#32) | 288
[Pawn sacrifice e6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/pawnsac%20e6.cql) | [Akopian - Gabriel, Baden-Baden 1996](https://lichess.org/FIkLhcnq#10) | 171
[Exchange sacrifice c3](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/exchange%20sac%20c3.cql) | [Ader Hausman - Fischer, Santiago 1959](https://lichess.org/ANM0U9CM/black#35) | 114
[Exchange sacrifice f6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/exchange%20sac%20f6.cql) | [Mongredien - Harrwitz, London 1860](https://lichess.org/l9tHh8Ns/black#39) | 104
[Bishop sacrifice h7](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/bishop%20sac%20h7.cql) | [Wilke - Priwonitz, Hamburg 1833](https://lichess.org/RkHwTFp8/black#17) | 59
[Smothered mate f7 is an aspect](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/smothered%20mate%20f7%20is%20an%20aspect.cql) | [Malakhov - Sanikidze, Chartres 2017](https://lichess.org/KkFEs213#44) | 28
[Pawn sacrifice d6](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/pawnsac%20d6.cql) | [Jones - Chanda, Abudhabi 2015](https://lichess.org/fjst8n6z#32) | 26
[Double bishop sacrifice h7, g7](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/double%20bishop%20sac%20h7%2C%20g7.cql) | [Nimzowitsch - Tarrasch, St Petersburg 1914](https://lichess.org/EoNu3agm/black#37)| 12
[Smothered mate](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/smothered%20mate.cql) | [Morphy - Amateur, Paris 1859](https://lichess.org/5gL58B5R#38) | 6
[Pawnchain c5-d6-e5, piece sacrifice c5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/pawnchain%20c5-d6-e5%2C%20piece%20sac%20c5.cql) | [Korchnoi - Nijboer, Netherlands 1994](https://lichess.org/gKjAjD7h#34) | 3
[Pawnchain f5-e6-d5, piece sacrifice f5](https://github.com/nilslindemann/Chess_Opening_Tactics_Frequency/blob/master/pawnchain%20f5-e6-d5%2C%20piece%20sac%20f5.cql) | [Tarrasch - Marshall, Nuremberg 1905](https://lichess.org/bFSy3CQQ#36) | 3

The PGNs containing these games are inside the folder *output*.

## How it was done

Attached to this repository are:

* The CQL scripts used for the search, these are files with the extension _*.cql_.
* The input game database, _input.pgn_, it is contained in the *input games.7z*.
* The used CQL interpreter, _cql.exe_ (version 6.0.5) contained in the *cql interpreter.7z*. If you are on Linux or macOS, replace this binary with a [download from the official CQL website](http://gadycosteff.com/cql/download.html).

The input database consists of games, where

* one player is above 2700 ELO, or
* both are above 2500, or
* the game was played before 1900.

## Running queries

First extract the _input games.7z_ and the _cql interpreter.7z_ into this directory.

On Windows, to (re-)run a script on the database, drag the script on the convenience _draghere.bat_. The results will be written to the _output_ folder, overwriting the results of previous runs.

Instead of the _input.pgn_ you can of course also use your own PGN database. Name it *input.pgn* or edit the _draghere.bat_ to match its name. For example, you could use [your games played on Lichess](https://lichess.org/api#operation/apiGamesUser).

It will take some time to run a script on a huge database. To speed up the queries, you can first run a generic script on the database, and then run the refined script on the output PGN of the first run. See the [CQL command line reference](http://gadycosteff.com/cql/options.html) for the available command line options.

## Learning CQL

* The [official CQL Documentation](http://gadycosteff.com/cql/) is a complete reference of the CQL language.
* [Haydoooke](https://github.com/haydoooke) wrote a beginner-friendly [documentation about CQL](https://haydoooke.github.io/Scidpp/cqltut.html).

The scripts in this repository use the following CQL [filters](http://gadycosteff.com/cql/filtertable.html) and [symbols](http://gadycosteff.com/cql/symbolindex.html) (leaving the obvious mathematical operators and the piece designators away). They are documented in the above links.

* Filters without parameters: _wtm_ ??? _btm_ ??? _mate_
* Filters with one parameter: _flipcolor_ ??? _result_ ??? _movenumber_ ??? _power_ ??? `#`
* Filters with two parameters: _attacks_ ??? _attackedby_ ??? _ray_
* Filters with three parameters: _pin_
* Filters with a variable amount of parameters: _line_
* Piece / square / position matching filters: `a` ??? `A` ??? `_` ??? `.`
* Grouping filters: `{}` ??? `[]` ??? `()` ??? (whitespace between filters, which is an implicit _AND_)
* Filters which are parts of other filters: `-->` ??? `*`

## Copyrights

I put the scripts and the database into the public domain (chess games are anyway). The copyright owners of CQL are Gady Costeff and Lewis Stiller.

## Credits

... go to Gady Costeff and Lewis Stiller for creating the CQL language, and to haydoooke for his documentation of CQL.

_Written by [Nils Lindemann](https://github.com/nilslindemann) in 2021-4-13._
