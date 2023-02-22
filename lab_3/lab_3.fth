VARIABLE CNT
  
: SQRT ( n -- )
    0 CNT !
    1
    SWAP
    BEGIN
      OVER - SWAP 2 + SWAP
      1 CNT +!
    DUP 0 = OVER 2OVER DROP < OR UNTIL
    CNT @
;

64 SQRT

.
