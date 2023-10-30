#this model estimates the correlations between individual machines and human ratings
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  # starting without machine ratings
  VARIABLE = "
  USEVARIABLES = item_ID participant_ID y1-y10 z1-z80;
  CLUSTER = item_ID participant_ID;
  BETWEEN = (item_ID) z1-z80;
  IDVARIABLE = row_number;",
  
  # the only estimator available is Bayes
  # manual page 656:
  # FBITERATIONS: number of iterations for each MCMC chain
  ANALYSIS = "
  TYPE = CROSSCLASSIFIED RANDOM;
  ESTIMATOR = BAYES;
  FBITERATIONS = 500;
  ALGORITHM = GIBBS(RW);
  PROCESSORS = 11;",
  
  
  # because I expect the correlations between participant responses
  # are independent from the machine ratings, I don't estimate
  # the residual correlations between the y variables
  MODEL = "
  
  %within%
  y1-y10;
  
  %between participant_ID%
  y1-y10; [y1-y10@0];
  
  %between item_ID% 
  y1-y10; [y1-y10];  

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
  
  y1  WITH   m1-m2;
  y2  WITH   m3-m4;
  y3  WITH   m5-m6;
  y4  WITH   m7-m8;
  y5  WITH  m9-m10;
  y6  WITH m11-m12;
  y7  WITH m13-m14;
  y8  WITH m15-m16;
  y9  WITH m17-m18;
  y10 WITH m19-m20;
  
  m1  WITH m2-m20@0;
  m2  WITH m3-m20@0;
  m3  WITH m4-m20@0;
  m4  WITH m5-m20@0;
  m5  WITH m6-m20@0;
  m6  WITH m7-m20@0;
  m7  WITH m8-m20@0;
  m8  WITH m9-m20@0;
  m9  WITH m10-m20@0;
  m10 WITH m11-m20@0;
  m11 WITH m12-m20@0;
  m12 WITH m13-m20@0;
  m13 WITH m14-m20@0
  m14 WITH m15-m20@0;
  m15 WITH m16-m20@0;
  m16 WITH m17-m20@0;
  m17 WITH m18-m20@0;
  m18 WITH m19-m20@0;
  m19 WITH m20@0;
  ", 
  
  OUTPUT = "standardized cinterval(hpd)",
  
  # page 838 of the manual:
  # distribution of plausible values for each observation
  # first number in fscores is the number of draws to compute per observation
  # when second number in fscores is ten, every tenth draw is used to compute 
  SAVEDATA = "FILE IS sin.dat;
              Save = fscores(50 10);",
  
  rdata = df
)
