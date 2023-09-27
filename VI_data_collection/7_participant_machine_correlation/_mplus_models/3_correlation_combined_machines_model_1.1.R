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

  m1  BY   z1-z8;
  m2  BY  z9-z16;
  m3  BY z17-z24;
  m4  BY z25-z32;
  m5  BY z33-z40;
  m6  BY z41-z48;
  m7  BY z49-z56;
  m8  BY z57-z64;
  m9  BY z65-z72;
  m10 BY z73-z80;
  
  y1  WITH   m1;
  y2  WITH   m2;
  y3  WITH   m3;
  y4  WITH   m4;
  y5  WITH   m5;
  y6  WITH   m6;
  y7  WITH   m7;
  y8  WITH   m8;
  y9  WITH   m9;
  y10 WITH  m10;
  
  m1-m20  WITH m1-m20@0;
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
