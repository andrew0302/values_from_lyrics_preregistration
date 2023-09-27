library('lavaan')

model_split_all <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_uniform_fa
          + ACHIEVEMENT_far_idf_fa
          + ACHIEVEMENT_split_idf_fa                         
          + ACHIEVEMENT_split_uniform_fa        
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_uniform_fa
          + BENEVOLENCE_far_idf_fa
          + BENEVOLENCE_split_idf_fa                         
          + BENEVOLENCE_split_uniform_fa      
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_uniform_fa
          + CONFORMITY_far_idf_fa
          + CONFORMITY_split_idf_fa                         
          + CONFORMITY_split_uniform_fa    
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM_mxm =~
          + HEDONISM_far_uniform_fa
          + HEDONISM_far_idf_fa
          + HEDONISM_split_idf_fa                         
          + HEDONISM_split_uniform_fa    
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER_mxm =~
          + POWER_far_uniform_fa
          + POWER_far_idf_fa
          + POWER_split_idf_fa                         
          + POWER_split_uniform_fa   
          POWER_pre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY_mxm =~
          + SECURITY_far_uniform_fa
          + SECURITY_far_idf_fa
          + SECURITY_split_idf_fa                         
          + SECURITY_split_uniform_fa       
          SECURITY_pre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF_mxm =~
          + SELF_far_uniform_fa
          + SELF_far_idf_fa
          + SELF_split_idf_fa                         
          + SELF_split_uniform_fa     
          SELF_pre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION_mxm =~
          + STIMULATION_far_uniform_fa
          + STIMULATION_far_idf_fa
          + STIMULATION_split_idf_fa                         
          + STIMULATION_split_uniform_fa    
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION_mxm =~
          + TRADITION_far_uniform_fa
          + TRADITION_far_idf_fa
          + TRADITION_split_idf_fa                         
          + TRADITION_split_uniform_fa         
          TRADITION_pre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_uniform_fa
          + UNIVERSALISM_far_idf_fa
          + UNIVERSALISM_split_idf_fa                         
          + UNIVERSALISM_split_uniform_fa     
          UNIVERSALISM_pre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

          ACHIEVEMENT ~~ ACHIEVEMENT_mxm
          ACHIEVEMENT ~~ ACHIEVEMENT_pre
          BENEVOLENCE ~~ BENEVOLENCE_mxm
          BENEVOLENCE ~~ BENEVOLENCE_pre
          CONFORMITY  ~~ CONFORMITY_mxm
          CONFORMITY  ~~ CONFORMITY_pre
          HEDONISM ~~ HEDONISM_mxm
          HEDONISM ~~ HEDONISM_pre
          POWER ~~ POWER_mxm
          POWER ~~ POWER_pre
          SECURITY ~~ SECURITY_mxm
          SECURITY ~~ SECURITY_pre
          SELF ~~ SELF_mxm
          SELF ~~ SELF_pre
          STIMULATION ~~ STIMULATION_mxm
          STIMULATION ~~ STIMULATION_pre
          TRADITION ~~ TRADITION_mxm
          TRADITION ~~ TRADITION_pre
          UNIVERSALISM ~~ UNIVERSALISM_mxm
          UNIVERSALISM ~~ UNIVERSALISM_pre
          
"
model_split_idf <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_idf_fa
          + ACHIEVEMENT_split_idf_fa                         
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_idf_fa
          + BENEVOLENCE_split_idf_fa                         
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_idf_fa
          + CONFORMITY_split_idf_fa                         
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_mxm =~
          + HEDONISM_far_idf_fa
          + HEDONISM_split_idf_fa                         
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_mxm =~
          + POWER_far_idf_fa
          + POWER_split_idf_fa                         
          POWER_pre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_mxm =~
          + SECURITY_far_idf_fa
          + SECURITY_split_idf_fa                         
          SECURITY_pre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_mxm =~
          + SELF_far_idf_fa
          + SELF_split_idf_fa                         
          SELF_pre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_mxm =~
          + STIMULATION_far_idf_fa
          + STIMULATION_split_idf_fa                         
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_mxm =~
          + TRADITION_far_idf_fa
          + TRADITION_split_idf_fa                         
          TRADITION_pre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_idf_fa
          + UNIVERSALISM_split_idf_fa                         
          UNIVERSALISM_pre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

          ACHIEVEMENT ~~ ACHIEVEMENT_mxm
          ACHIEVEMENT ~~ ACHIEVEMENT_pre
          BENEVOLENCE ~~ BENEVOLENCE_mxm
          BENEVOLENCE ~~ BENEVOLENCE_pre
          CONFORMITY  ~~ CONFORMITY_mxm
          CONFORMITY  ~~ CONFORMITY_pre
          HEDONISM ~~ HEDONISM_mxm
          HEDONISM ~~ HEDONISM_pre
          POWER ~~ POWER_mxm
          POWER ~~ POWER_pre
          SECURITY ~~ SECURITY_mxm
          SECURITY ~~ SECURITY_pre
          SELF ~~ SELF_mxm
          SELF ~~ SELF_pre
          STIMULATION ~~ STIMULATION_mxm
          STIMULATION ~~ STIMULATION_pre
          TRADITION ~~ TRADITION_mxm
          TRADITION ~~ TRADITION_pre
          UNIVERSALISM ~~ UNIVERSALISM_mxm
          UNIVERSALISM ~~ UNIVERSALISM_pre
          
"

model_split_uniform <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_uniform_fa
          + ACHIEVEMENT_split_uniform_fa                         
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics         
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_uniform_fa
          + BENEVOLENCE_split_uniform_fa                         
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics
          + BENEVOLENCE_googlenews_uniform_weight_lyrics         
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_uniform_fa
          + CONFORMITY_split_uniform_fa                         
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_uniform_weight_lyrics
          + CONFORMITY_googlenews_uniform_weight_lyrics         
          
          HEDONISM_mxm =~
          + HEDONISM_far_uniform_fa
          + HEDONISM_split_uniform_fa                         
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_uniform_weight_lyrics
          + HEDONISM_googlenews_uniform_weight_lyrics         
          
          POWER_mxm =~
          + POWER_far_uniform_fa
          + POWER_split_uniform_fa                         
          POWER_pre =~
          + POWER_glove840B300d_uniform_weight_lyrics
          + POWER_googlenews_uniform_weight_lyrics         
          
          SECURITY_mxm =~
          + SECURITY_far_uniform_fa
          + SECURITY_split_uniform_fa                         
          SECURITY_pre =~
          + SECURITY_glove840B300d_uniform_weight_lyrics
          + SECURITY_googlenews_uniform_weight_lyrics         
          
          SELF_mxm =~
          + SELF_far_uniform_fa
          + SELF_split_uniform_fa                         
          SELF_pre =~
          + SELF_glove840B300d_uniform_weight_lyrics
          + SELF_googlenews_uniform_weight_lyrics         
          
          STIMULATION_mxm =~
          + STIMULATION_far_uniform_fa
          + STIMULATION_split_uniform_fa                         
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_uniform_weight_lyrics
          + STIMULATION_googlenews_uniform_weight_lyrics         
          
          TRADITION_mxm =~
          + TRADITION_far_uniform_fa
          + TRADITION_split_uniform_fa                         
          TRADITION_pre =~
          + TRADITION_glove840B300d_uniform_weight_lyrics
          + TRADITION_googlenews_uniform_weight_lyrics         
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_uniform_fa
          + UNIVERSALISM_split_uniform_fa                         
          UNIVERSALISM_pre =~
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics
          + UNIVERSALISM_googlenews_uniform_weight_lyrics         

          ACHIEVEMENT ~~ ACHIEVEMENT_mxm
          ACHIEVEMENT ~~ ACHIEVEMENT_pre
          BENEVOLENCE ~~ BENEVOLENCE_mxm
          BENEVOLENCE ~~ BENEVOLENCE_pre
          CONFORMITY  ~~ CONFORMITY_mxm
          CONFORMITY  ~~ CONFORMITY_pre
          HEDONISM ~~ HEDONISM_mxm
          HEDONISM ~~ HEDONISM_pre
          POWER ~~ POWER_mxm
          POWER ~~ POWER_pre
          SECURITY ~~ SECURITY_mxm
          SECURITY ~~ SECURITY_pre
          SELF ~~ SELF_mxm
          SELF ~~ SELF_pre
          STIMULATION ~~ STIMULATION_mxm
          STIMULATION ~~ STIMULATION_pre
          TRADITION ~~ TRADITION_mxm
          TRADITION ~~ TRADITION_pre
          UNIVERSALISM ~~ UNIVERSALISM_mxm
          UNIVERSALISM ~~ UNIVERSALISM_pre
          
"

model_split_pre <- "

          ACHIEVEMENT_idf =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          ACHIEVEMENT_uni =~
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE_idf =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          BENEVOLENCE_uni =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY_idf =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          CONFORMITY_uni =~
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM_idf =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          HEDONISM_uni =~
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER_idf =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          POWER_uni =~
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY_idf =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          SECURITY_uni =~
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF_idf =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          SELF_uni =~
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION_idf =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          STIMULATION_uni =~
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION_idf =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          TRADITION_uni =~
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM_idf =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          UNIVERSALISM_uni =~
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

          ACHIEVEMENT ~~ ACHIEVEMENT_idf
          ACHIEVEMENT ~~ ACHIEVEMENT_uni
          BENEVOLENCE ~~ BENEVOLENCE_idf
          BENEVOLENCE ~~ BENEVOLENCE_uni
          CONFORMITY  ~~ CONFORMITY_idf
          CONFORMITY  ~~ CONFORMITY_uni
          HEDONISM ~~ HEDONISM_idf
          HEDONISM ~~ HEDONISM_uni
          POWER ~~ POWER_idf
          POWER ~~ POWER_uni
          SECURITY ~~ SECURITY_idf
          SECURITY ~~ SECURITY_uni
          SELF ~~ SELF_idf
          SELF ~~ SELF_uni
          STIMULATION ~~ STIMULATION_idf
          STIMULATION ~~ STIMULATION_uni
          TRADITION ~~ TRADITION_idf
          TRADITION ~~ TRADITION_uni
          UNIVERSALISM ~~ UNIVERSALISM_idf
          UNIVERSALISM ~~ UNIVERSALISM_uni
          
"
model_split_mxm <- "

          ACHIEVEMENT_idf =~
          + ACHIEVEMENT_far_idf_fa
          + ACHIEVEMENT_split_idf_fa                         
          ACHIEVEMENT_uni =~
          + ACHIEVEMENT_far_uniform_fa
          + ACHIEVEMENT_split_uniform_fa      
          
          BENEVOLENCE_idf =~
          + BENEVOLENCE_far_idf_fa
          + BENEVOLENCE_split_idf_fa                         
          BENEVOLENCE_uni =~
          + BENEVOLENCE_far_uniform_fa
          + BENEVOLENCE_split_uniform_fa     
          
          CONFORMITY_idf =~
          + CONFORMITY_far_idf_fa
          + CONFORMITY_split_idf_fa                         
          CONFORMITY_uni =~
          + CONFORMITY_far_uniform_fa
          + CONFORMITY_split_uniform_fa     
          
          HEDONISM_idf =~
          + HEDONISM_far_idf_fa
          + HEDONISM_split_idf_fa                         
          HEDONISM_uni =~
          + HEDONISM_far_uniform_fa
          + HEDONISM_split_uniform_fa     
          
          POWER_idf =~
          + POWER_far_idf_fa
          + POWER_split_idf_fa                         
          POWER_uni =~
          + POWER_far_uniform_fa
          + POWER_split_uniform_fa     
          
          SECURITY_idf =~
          + SECURITY_far_idf_fa
          + SECURITY_split_idf_fa                         
          SECURITY_uni =~
          + SECURITY_far_uniform_fa
          + SECURITY_split_uniform_fa     
          
          SELF_idf =~
          + SELF_far_idf_fa
          + SELF_split_idf_fa                         
          SELF_uni =~
          + SELF_far_uniform_fa
          + SELF_split_uniform_fa     
          
          STIMULATION_idf =~
          + STIMULATION_far_idf_fa
          + STIMULATION_split_idf_fa                         
          STIMULATION_uni =~
          + STIMULATION_far_uniform_fa
          + STIMULATION_split_uniform_fa     
                 
          TRADITION_idf =~
          + TRADITION_far_idf_fa
          + TRADITION_split_idf_fa                         
          TRADITION_uni =~
          + TRADITION_far_uniform_fa
          + TRADITION_split_uniform_fa     
          
          UNIVERSALISM_idf =~
          + UNIVERSALISM_far_idf_fa
          + UNIVERSALISM_split_idf_fa                         
          UNIVERSALISM_uni =~
          + UNIVERSALISM_far_uniform_fa
          + UNIVERSALISM_split_uniform_fa     

          ACHIEVEMENT ~~ ACHIEVEMENT_idf
          ACHIEVEMENT ~~ ACHIEVEMENT_uni
          BENEVOLENCE ~~ BENEVOLENCE_idf
          BENEVOLENCE ~~ BENEVOLENCE_uni
          CONFORMITY  ~~ CONFORMITY_idf
          CONFORMITY  ~~ CONFORMITY_uni
          HEDONISM ~~ HEDONISM_idf
          HEDONISM ~~ HEDONISM_uni
          POWER ~~ POWER_idf
          POWER ~~ POWER_uni
          SECURITY ~~ SECURITY_idf
          SECURITY ~~ SECURITY_uni
          SELF ~~ SELF_idf
          SELF ~~ SELF_uni
          STIMULATION ~~ STIMULATION_idf
          STIMULATION ~~ STIMULATION_uni
          TRADITION ~~ TRADITION_idf
          TRADITION ~~ TRADITION_uni
          UNIVERSALISM ~~ UNIVERSALISM_idf
          UNIVERSALISM ~~ UNIVERSALISM_uni
          
"

model_idf_pre <- "

          ACHIEVEMENT_idf =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_idf =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_idf =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_idf =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_idf =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_idf =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_idf =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_idf =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_idf =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_idf =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

          ACHIEVEMENT ~~ ACHIEVEMENT_idf
          BENEVOLENCE ~~ BENEVOLENCE_idf
          CONFORMITY  ~~ CONFORMITY_idf
          HEDONISM ~~ HEDONISM_idf
          POWER ~~ POWER_idf
          SECURITY ~~ SECURITY_idf
          SELF ~~ SELF_idf
          STIMULATION ~~ STIMULATION_idf
          TRADITION ~~ TRADITION_idf
          UNIVERSALISM ~~ UNIVERSALISM_idf
          
"

models <- list(model_split_all, 
               model_split_idf, model_split_uniform, 
               model_split_pre, model_split_mxm, 
               model_idf_pre)

names(models) <- c("model_split_all", 
                   "model_split_idf", "model_split_uniform", 
                   "model_split_pre", "model_split_mxm", 
                   "model_idf_pre")

rm(model_split_all, 
   model_split_idf, model_split_uniform, 
   model_split_pre, model_split_mxm, 
   model_idf_pre)