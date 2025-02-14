#this model estimates the correlations between individual machines and human ratings
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  VARIABLE = "NAMES ARE  z1-z80;",
  ANALYSIS = "ITERATIONS = 5000;",
  MODEL = "
  m1  BY  z1-z4;
  m2  BY  z5-z8;
  m3  BY  z9-z12;
  m4  BY z13-z16;
  m5  BY z17-z20;
  m6  BY z21-z24;
  m7  BY z25-z28;
  m8  BY z29-z32;
  m9  BY z33-z36;
  m10 BY z37-z40;
  m11 BY z41-z44;
  m12 BY z45-z48;
  m13 BY z49-z52;
  m14 BY z53-z56;
  m15 BY z57-z60;
  m16 BY z61-z64;
  m17 BY z65-z68;
  m18 BY z69-z72;
  m19 BY z73-z76;
  m20 BY z77-z80;

  
  m1-m20  WITH m1-m20@0;

  ", 
  
  OUTPUT = "standardized cinterval",
  
  SAVEDATA = "FILE IS machines_2.dat;",
  
  rdata = df
)
