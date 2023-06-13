# author: andrew m. demetriou

# mplus model specification:
# participant model 1.0
# this model estimates parameters from response data 
# including the correlation of the item intercepts

mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  # select only participant variables
  VARIABLE = "
  USEVARIABLES = item_ID subject_ID y1-y10;
  CLUSTER = item_ID subject_ID;
  IDVARIABLE = row_number;",
  
  # the only estimator available is Bayes
  # manual page 656:
  # FBITERATIONS: number of iterations for each MCMC chain
  ANALYSIS = "
  TYPE = CROSSCLASSIFIED RANDOM;
  ESTIMATOR = BAYES;
  FBITERATIONS = 10000;
  ALGORITHM = GIBBS(RW);
  PROCESSORS = 11;",
  
  MODEL = "
  
  %within% 
  y1-y10;
  
  %between item_ID% 
  y1-y10; [y1-y10];  
  y1 WITH y1-y10;
  y2 WITH y1-y10;
  y3 WITH y1-y10;
  y4 WITH y1-y10;
  y5 WITH y1-y10;
  y6 WITH y1-y10;
  y7 WITH y1-y10;
  y8 WITH y1-y10;
  y9 WITH y1-y10;
  y10 WITH y1-y10;
  
  %between subject_ID% 
  y1-y10; [y1-y10@0];", 
  
  OUTPUT = "standardized cinterval(hpd)",
  
  # page 838 of the manual:
  # distribution of plausible values for each observation
  # first number in fscores is the number of draws to compute per observation
  # from a bayesian estimation procedure;
  # when second number in fscores is ten, every tenth draw is used to compute 
  SAVEDATA = "FILE IS participant_fscores.dat;
              Save = fscores(100 10);",
  
  rdata = df
)