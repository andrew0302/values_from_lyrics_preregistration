#this model estimates the correlations between individual machines and human ratings
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  VARIABLE = "NAMES ARE  z1-z40;",
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

  
  m1-m10  WITH m1-m10@0;

  ", 
  
  OUTPUT = "standardized cinterval",
  
  SAVEDATA = "FILE IS machines_3.dat;",
  
  rdata = df
)
