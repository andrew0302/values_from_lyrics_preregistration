#this model estimates the correlations between individual machines and human ratings
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  # starting without machine ratings
  VARIABLE = "
  USEVARIABLES = item_ID participant_ID y1-y2 z1-z16;
  CLUSTER = item_ID participant_ID;
  BETWEEN = (item_ID) z1-z16;
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
  y1-y2;
  
  %between participant_ID%
  y1-y2; [y1-y2@0];
  
  %between item_ID% 
  y1-y2; [y1-y2];  

  y1  WITH  z1- z8;
  y2  WITH  z9-z16;
  
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