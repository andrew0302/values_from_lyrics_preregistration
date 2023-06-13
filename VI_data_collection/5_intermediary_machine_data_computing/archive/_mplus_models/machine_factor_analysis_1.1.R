# author: andrew m. demetriou

# mplus model specification:
# machine model 1.0
# this model estimates parameters from machine output
# focusing on estimating latent variables

# this model estimates the correlations among the machine latent variables
mplus_model <- mplusObject(
  TITLE = "model;",
  MISSING = ".;",
  VARIABLE = "
  NAMES = z1-z44 row_number; 
  MISSING=.;
  USEVARIABLES = z1-z44;
  IDVARIABLE = row_number;",


  MODEL = "
  
  m1 BY z1-z44;
  m2 BY z45-z88;
  m3 BY z89-z132;
  m4 BY z133-z176;
  m5 BY z177-z220;
  m6 BY z221-z264;
  m7 BY z265-z308;
  m8 BY z309-z352;
  m9 BY z353-z396;
  m10 BY z397-z440;
  
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
  
  OUTPUT = "standardized cinterval(hpd);",
  
  SAVEDATA = "FILE IS machine_fscores.dat;
              Save = fscores;",
  
  rdata = df
)