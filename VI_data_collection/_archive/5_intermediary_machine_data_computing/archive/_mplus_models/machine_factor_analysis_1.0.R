
# this model estimates the correlations among the machine latent variables
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  # starting without machine ratings
  VARIABLE = "
  USEVARIABLES = item_ID subject_ID y1-y10 z1-z80;
  CLUSTER = item_ID subject_ID;
  BETWEEN = (item_ID)z1-z80;",
  
  # the only estimator available is Bayes
  # manual page 656:
  #FBITERATIONS: number of iterations for each MCMC chain
  ANALYSIS = "
  TYPE = CROSSCLASSIFIED RANDOM;
  ESTIMATOR = BAYES;
  FBITERATIONS = 500;
  ALGORITHM = GIBBS(RW);
  PROCESSORS = 11;",
  
  MODEL = "
  
  %within% 
  y1-y10;
  
  %between subject_ID% 
  y1-y10; [y1-y10@0];
  
  %between item_ID% 
  y1-y10; [y1-y10];  

  m1 BY z1-z8;
  m2 BY z9-z16;
  m3 BY z17-z24;
  m4 BY z25-z32;
  m5 BY z33-z40;
  m6 BY z41-z48;
  m7 BY z49-z56;
  m8 BY z57-z64;
  m9 BY z65-z72;
  m10 BY z73-z80;
  
  m1@1; m2@1; m3@1; m4@1; m5@1; 
  m6@1; m7@1; m8@1; m9@1; m10@1;
  
  m1 WITH m2-m10;
  m2 WITH m3-m10;
  m3 WITH m4-m10;
  m4 WITH m5-m10;
  m5 WITH m6-m10;
  m6 WITH m7-m10;
  m7 WITH m8-m10;
  m8 WITH m9-m10;
  m9 WITH m10;
  
  ", 
  
  OUTPUT = "standardized cinterval(hpd)",
  
  # page 838 of the manual:
  # distribution of plausible values for each observation
  # first number in fscores is the number of draws to compute per observation
  # when second number in fscores is ten, every tenth draw is used to compute 
  SAVEDATA = "FILE IS fscores.dat;
              Save = fscores(50 10);",
  
  rdata = machines_as_fixed
)