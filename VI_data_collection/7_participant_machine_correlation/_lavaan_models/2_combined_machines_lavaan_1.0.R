library('lavaan')

model_all_all <- "
          
          ACHIEVEMENT_machines =~
          + ACHIEVEMENT_far_uniform_fa
          + ACHIEVEMENT_far_idf_fa
          + ACHIEVEMENT_split_idf_fa                         
          + ACHIEVEMENT_split_uniform_fa                     
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE_machines =~
          + BENEVOLENCE_far_uniform_fa
          + BENEVOLENCE_far_idf_fa
          + BENEVOLENCE_split_idf_fa                         
          + BENEVOLENCE_split_uniform_fa                     
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY_machines =~
          + CONFORMITY_far_uniform_fa
          + CONFORMITY_far_idf_fa
          + CONFORMITY_split_idf_fa                         
          + CONFORMITY_split_uniform_fa                     
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM_machines =~
          + HEDONISM_far_uniform_fa
          + HEDONISM_far_idf_fa
          + HEDONISM_split_idf_fa                         
          + HEDONISM_split_uniform_fa                     
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER_machines =~
          + POWER_far_uniform_fa
          + POWER_far_idf_fa
          + POWER_split_idf_fa                         
          + POWER_split_uniform_fa                     
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY_machines =~
          + SECURITY_far_uniform_fa
          + SECURITY_far_idf_fa
          + SECURITY_split_idf_fa                         
          + SECURITY_split_uniform_fa                     
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF_machines =~
          + SELF_far_uniform_fa
          + SELF_far_idf_fa
          + SELF_split_idf_fa                         
          + SELF_split_uniform_fa                     
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION_machines =~
          + STIMULATION_far_uniform_fa
          + STIMULATION_far_idf_fa
          + STIMULATION_split_idf_fa                         
          + STIMULATION_split_uniform_fa                     
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION_machines =~
          + TRADITION_far_uniform_fa
          + TRADITION_far_idf_fa
          + TRADITION_split_idf_fa                         
          + TRADITION_split_uniform_fa                     
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM_machines =~
          + UNIVERSALISM_far_uniform_fa
          + UNIVERSALISM_far_idf_fa
          + UNIVERSALISM_split_idf_fa                         
          + UNIVERSALISM_split_uniform_fa                     
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 


          ACHIEVEMENT ~~ ACHIEVEMENT_machines
          BENEVOLENCE ~~ BENEVOLENCE_machines 
          CONFORMITY  ~~ CONFORMITY_machines
          HEDONISM ~~ HEDONISM_machines
          POWER ~~ POWER_machines
          SECURITY ~~ SECURITY_machines
          SELF ~~ SELF_machines
          STIMULATION ~~ STIMULATION_machines
          TRADITION ~~ TRADITION_machines
          UNIVERSALISM ~~ UNIVERSALISM_machines
          
"
model_all_idf <- "
          
          ACHIEVEMENT_machines =~
          + ACHIEVEMENT_far_idf_fa
          + ACHIEVEMENT_split_idf_fa                         
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_machines =~
          + BENEVOLENCE_far_idf_fa
          + BENEVOLENCE_split_idf_fa                         
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_machines =~
          + CONFORMITY_far_idf_fa
          + CONFORMITY_split_idf_fa                         
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_machines =~
          + HEDONISM_far_idf_fa
          + HEDONISM_split_idf_fa                         
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_machines =~
          + POWER_far_idf_fa
          + POWER_split_idf_fa                         
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_machines =~
          + SECURITY_far_idf_fa
          + SECURITY_split_idf_fa                         
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_machines =~
          + SELF_far_idf_fa
          + SELF_split_idf_fa                         
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_machines =~
          + STIMULATION_far_idf_fa
          + STIMULATION_split_idf_fa                         
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_machines =~
          + TRADITION_far_idf_fa
          + TRADITION_split_idf_fa                         
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_machines =~
          + UNIVERSALISM_far_idf_fa
          + UNIVERSALISM_split_idf_fa                         
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         


          ACHIEVEMENT ~~ ACHIEVEMENT_machines
          BENEVOLENCE ~~ BENEVOLENCE_machines 
          CONFORMITY  ~~ CONFORMITY_machines
          HEDONISM ~~ HEDONISM_machines
          POWER ~~ POWER_machines
          SECURITY ~~ SECURITY_machines
          SELF ~~ SELF_machines
          STIMULATION ~~ STIMULATION_machines
          TRADITION ~~ TRADITION_machines
          UNIVERSALISM ~~ UNIVERSALISM_machines
          
"

model_all_uniform <- "
          
          ACHIEVEMENT_machines =~
          + ACHIEVEMENT_far_uniform_fa
          + ACHIEVEMENT_split_uniform_fa                         
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics         
          
          BENEVOLENCE_machines =~
          + BENEVOLENCE_far_uniform_fa
          + BENEVOLENCE_split_uniform_fa                         
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics
          + BENEVOLENCE_googlenews_uniform_weight_lyrics         
          
          CONFORMITY_machines =~
          + CONFORMITY_far_uniform_fa
          + CONFORMITY_split_uniform_fa                         
          + CONFORMITY_glove840B300d_uniform_weight_lyrics
          + CONFORMITY_googlenews_uniform_weight_lyrics         
          
          HEDONISM_machines =~
          + HEDONISM_far_uniform_fa
          + HEDONISM_split_uniform_fa                         
          + HEDONISM_glove840B300d_uniform_weight_lyrics
          + HEDONISM_googlenews_uniform_weight_lyrics         
          
          POWER_machines =~
          + POWER_far_uniform_fa
          + POWER_split_uniform_fa                         
          + POWER_glove840B300d_uniform_weight_lyrics
          + POWER_googlenews_uniform_weight_lyrics         
          
          SECURITY_machines =~
          + SECURITY_far_uniform_fa
          + SECURITY_split_uniform_fa                         
          + SECURITY_glove840B300d_uniform_weight_lyrics
          + SECURITY_googlenews_uniform_weight_lyrics         
          
          SELF_machines =~
          + SELF_far_uniform_fa
          + SELF_split_uniform_fa                         
          + SELF_glove840B300d_uniform_weight_lyrics
          + SELF_googlenews_uniform_weight_lyrics         
          
          STIMULATION_machines =~
          + STIMULATION_far_uniform_fa
          + STIMULATION_split_uniform_fa                         
          + STIMULATION_glove840B300d_uniform_weight_lyrics
          + STIMULATION_googlenews_uniform_weight_lyrics         
          
          TRADITION_machines =~
          + TRADITION_far_uniform_fa
          + TRADITION_split_uniform_fa                         
          + TRADITION_glove840B300d_uniform_weight_lyrics
          + TRADITION_googlenews_uniform_weight_lyrics         
          
          UNIVERSALISM_machines =~
          + UNIVERSALISM_far_uniform_fa
          + UNIVERSALISM_split_uniform_fa                         
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics
          + UNIVERSALISM_googlenews_uniform_weight_lyrics         


          ACHIEVEMENT ~~ ACHIEVEMENT_machines
          BENEVOLENCE ~~ BENEVOLENCE_machines 
          CONFORMITY  ~~ CONFORMITY_machines
          HEDONISM ~~ HEDONISM_machines
          POWER ~~ POWER_machines
          SECURITY ~~ SECURITY_machines
          SELF ~~ SELF_machines
          STIMULATION ~~ STIMULATION_machines
          TRADITION ~~ TRADITION_machines
          UNIVERSALISM ~~ UNIVERSALISM_machines
          
"

models <- list(model_all_all, 
               model_all_idf, model_all_uniform)

names(models) <- c("model_all_all", 
                   "model_all_idf", "model_all_uniform")

rm(model_all_all, 
   model_all_idf, model_all_uniform)