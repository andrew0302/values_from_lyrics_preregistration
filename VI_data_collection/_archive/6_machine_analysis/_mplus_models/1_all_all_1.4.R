#this model estimates the correlations between individual machines and human ratings
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  VARIABLE = "NAMES ARE  z1-z80;",

  MODEL = "
  m1  BY  z1-z8;
  m2  BY  z9-z16;
  m3  BY  z17-z24;
  m4  BY z25-z32;
  m5  BY z33-z40;
  m6  BY z41-z48;
  m7  BY z49-z56;
  m8  BY z57-z64;
  m9  BY z65-z72;
  m10 BY z73-z80;

  
  m1-m10  WITH m1-m10@0;

  ", 
  
  OUTPUT = "standardized cinterval",
  
  SAVEDATA = "FILE IS machines_1.dat;",
  
  rdata = df
)
