# StudiMandiri
The code for my Studi Mandiri small research project at Universitas Indonesia, implementing contextual abduction in swi-prolog.
There are 3 mode:
  - $table$ is the one with dual program transformation for IC.
  - $vneg$ is the one with new transformation for IC.
  - $split$ is the one with new transformation for IC and the abducible is divided into positive and negative literals.
The use of reduced tabled predicate is manually controlled by switching $checkAndWriteTable(H, R)$ and $writeTable(H)$ in the $transformRule$ rule.
