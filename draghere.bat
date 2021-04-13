echo off

echo %~n1

cql -input "input.pgn" -output "output\%~n1.pgn" "%~n1"

pause
