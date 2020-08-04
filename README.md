# TabdualSC
The implementation code that is related to the paper "Tabling Optimization for Contextual Abduction" which is submitted to ICLP 2020. This contains an improvement of Tabdual using a new transformation for ICs involving subset checking, as well as tabling optimization using reduced tabled predicates.
There are 3 mode:
  - 'table' is the one with dual program transformation for IC.
  - 'vneg' is the one with new transformation for IC using subset checking.
  - 'split' is the one with new transformation for IC and the abducible is divided into positive and negative literals.

The use of reduced tabled predicates is manually controlled by switching checkAndWriteTable(H, R) and writeTable(H) in transformRule/0 rule.
