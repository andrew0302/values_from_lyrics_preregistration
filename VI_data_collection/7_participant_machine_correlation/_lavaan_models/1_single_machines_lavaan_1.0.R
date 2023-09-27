library('lavaan')

model_all_all <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_uniform_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_far_idf_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_idf_fa                         
          ACHIEVEMENT ~~ ACHIEVEMENT_split_uniform_fa                     
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_idf_weight_lyrics         
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE ~~ BENEVOLENCE_far_uniform_fa
          BENEVOLENCE ~~ BENEVOLENCE_far_idf_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_idf_fa                         
          BENEVOLENCE ~~ BENEVOLENCE_split_uniform_fa                     
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_idf_weight_lyrics
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_idf_weight_lyrics         
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY ~~ CONFORMITY_far_uniform_fa
          CONFORMITY ~~ CONFORMITY_far_idf_fa
          CONFORMITY ~~ CONFORMITY_split_idf_fa                         
          CONFORMITY ~~ CONFORMITY_split_uniform_fa                     
          CONFORMITY ~~ CONFORMITY_glove840B300d_idf_weight_lyrics
          CONFORMITY ~~ CONFORMITY_glove840B300d_uniform_weight_lyrics  
          CONFORMITY ~~ CONFORMITY_googlenews_idf_weight_lyrics         
          CONFORMITY ~~ CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM ~~ HEDONISM_far_uniform_fa
          HEDONISM ~~ HEDONISM_far_idf_fa
          HEDONISM ~~ HEDONISM_split_idf_fa                         
          HEDONISM ~~ HEDONISM_split_uniform_fa                     
          HEDONISM ~~ HEDONISM_glove840B300d_idf_weight_lyrics
          HEDONISM ~~ HEDONISM_glove840B300d_uniform_weight_lyrics  
          HEDONISM ~~ HEDONISM_googlenews_idf_weight_lyrics         
          HEDONISM ~~ HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER ~~ POWER_far_uniform_fa
          POWER ~~ POWER_far_idf_fa
          POWER ~~ POWER_split_idf_fa                         
          POWER ~~ POWER_split_uniform_fa                     
          POWER ~~ POWER_glove840B300d_idf_weight_lyrics
          POWER ~~ POWER_glove840B300d_uniform_weight_lyrics  
          POWER ~~ POWER_googlenews_idf_weight_lyrics         
          POWER ~~ POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY ~~ SECURITY_far_uniform_fa
          SECURITY ~~ SECURITY_far_idf_fa
          SECURITY ~~ SECURITY_split_idf_fa                         
          SECURITY ~~ SECURITY_split_uniform_fa                     
          SECURITY ~~ SECURITY_glove840B300d_idf_weight_lyrics
          SECURITY ~~ SECURITY_glove840B300d_uniform_weight_lyrics  
          SECURITY ~~ SECURITY_googlenews_idf_weight_lyrics         
          SECURITY ~~ SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF ~~ SELF_far_uniform_fa
          SELF ~~ SELF_far_idf_fa
          SELF ~~ SELF_split_idf_fa                         
          SELF ~~ SELF_split_uniform_fa                     
          SELF ~~ SELF_glove840B300d_idf_weight_lyrics
          SELF ~~ SELF_glove840B300d_uniform_weight_lyrics  
          SELF ~~ SELF_googlenews_idf_weight_lyrics         
          SELF ~~ SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION ~~ STIMULATION_far_uniform_fa
          STIMULATION ~~ STIMULATION_far_idf_fa
          STIMULATION ~~ STIMULATION_split_idf_fa                         
          STIMULATION ~~ STIMULATION_split_uniform_fa                     
          STIMULATION ~~ STIMULATION_glove840B300d_idf_weight_lyrics
          STIMULATION ~~ STIMULATION_glove840B300d_uniform_weight_lyrics  
          STIMULATION ~~ STIMULATION_googlenews_idf_weight_lyrics         
          STIMULATION ~~ STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION ~~ TRADITION_far_uniform_fa
          TRADITION ~~ TRADITION_far_idf_fa
          TRADITION ~~ TRADITION_split_idf_fa                         
          TRADITION ~~ TRADITION_split_uniform_fa                     
          TRADITION ~~ TRADITION_glove840B300d_idf_weight_lyrics
          TRADITION ~~ TRADITION_glove840B300d_uniform_weight_lyrics  
          TRADITION ~~ TRADITION_googlenews_idf_weight_lyrics         
          TRADITION ~~ TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM ~~ UNIVERSALISM_far_uniform_fa
          UNIVERSALISM ~~ UNIVERSALISM_far_idf_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_idf_fa                         
          UNIVERSALISM ~~ UNIVERSALISM_split_uniform_fa                     
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_idf_weight_lyrics
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_idf_weight_lyrics         
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_uniform_weight_lyrics 

"

model_all_uniform <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_uniform_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_uniform_fa                     
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE ~~ BENEVOLENCE_far_uniform_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_uniform_fa                     
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY ~~ CONFORMITY_far_uniform_fa
          CONFORMITY ~~ CONFORMITY_split_uniform_fa                     
          CONFORMITY ~~ CONFORMITY_glove840B300d_uniform_weight_lyrics  
          CONFORMITY ~~ CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM ~~ HEDONISM_far_uniform_fa
          HEDONISM ~~ HEDONISM_split_uniform_fa                     
          HEDONISM ~~ HEDONISM_glove840B300d_uniform_weight_lyrics  
          HEDONISM ~~ HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER ~~ POWER_far_uniform_fa
          POWER ~~ POWER_split_uniform_fa                     
          POWER ~~ POWER_glove840B300d_uniform_weight_lyrics  
          POWER ~~ POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY ~~ SECURITY_far_uniform_fa
          SECURITY ~~ SECURITY_split_uniform_fa                     
          SECURITY ~~ SECURITY_glove840B300d_uniform_weight_lyrics  
          SECURITY ~~ SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF ~~ SELF_far_uniform_fa
          SELF ~~ SELF_split_uniform_fa                     
          SELF ~~ SELF_glove840B300d_uniform_weight_lyrics  
          SELF ~~ SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION ~~ STIMULATION_far_uniform_fa
          STIMULATION ~~ STIMULATION_split_uniform_fa                     
          STIMULATION ~~ STIMULATION_glove840B300d_uniform_weight_lyrics  
          STIMULATION ~~ STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION ~~ TRADITION_far_uniform_fa
          TRADITION ~~ TRADITION_split_uniform_fa                     
          TRADITION ~~ TRADITION_glove840B300d_uniform_weight_lyrics  
          TRADITION ~~ TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM ~~ UNIVERSALISM_far_uniform_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_uniform_fa                     
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_uniform_weight_lyrics 
"

model_all_idf <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_idf_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_idf_fa                     
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_idf_weight_lyrics  
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_idf_weight_lyrics    
          
          BENEVOLENCE ~~ BENEVOLENCE_far_idf_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_idf_fa                     
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_idf_weight_lyrics  
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_idf_weight_lyrics 
          
          CONFORMITY ~~ CONFORMITY_far_idf_fa
          CONFORMITY ~~ CONFORMITY_split_idf_fa                     
          CONFORMITY ~~ CONFORMITY_glove840B300d_idf_weight_lyrics  
          CONFORMITY ~~ CONFORMITY_googlenews_idf_weight_lyrics 
          
          HEDONISM ~~ HEDONISM_far_idf_fa
          HEDONISM ~~ HEDONISM_split_idf_fa                     
          HEDONISM ~~ HEDONISM_glove840B300d_idf_weight_lyrics  
          HEDONISM ~~ HEDONISM_googlenews_idf_weight_lyrics 
          
          POWER ~~ POWER_far_idf_fa
          POWER ~~ POWER_split_idf_fa                     
          POWER ~~ POWER_glove840B300d_idf_weight_lyrics  
          POWER ~~ POWER_googlenews_idf_weight_lyrics 
          
          SECURITY ~~ SECURITY_far_idf_fa
          SECURITY ~~ SECURITY_split_idf_fa                     
          SECURITY ~~ SECURITY_glove840B300d_idf_weight_lyrics  
          SECURITY ~~ SECURITY_googlenews_idf_weight_lyrics 
          
          SELF ~~ SELF_far_idf_fa
          SELF ~~ SELF_split_idf_fa                     
          SELF ~~ SELF_glove840B300d_idf_weight_lyrics  
          SELF ~~ SELF_googlenews_idf_weight_lyrics 
          
          STIMULATION ~~ STIMULATION_far_idf_fa
          STIMULATION ~~ STIMULATION_split_idf_fa                     
          STIMULATION ~~ STIMULATION_glove840B300d_idf_weight_lyrics  
          STIMULATION ~~ STIMULATION_googlenews_idf_weight_lyrics 
          
          TRADITION ~~ TRADITION_far_idf_fa
          TRADITION ~~ TRADITION_split_idf_fa                     
          TRADITION ~~ TRADITION_glove840B300d_idf_weight_lyrics  
          TRADITION ~~ TRADITION_googlenews_idf_weight_lyrics 
          
          UNIVERSALISM ~~ UNIVERSALISM_far_idf_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_idf_fa                     
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_idf_weight_lyrics  
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_idf_weight_lyrics 
"

model_all_pretrained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_idf_weight_lyrics         
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_idf_weight_lyrics
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_idf_weight_lyrics         
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY ~~ CONFORMITY_glove840B300d_idf_weight_lyrics
          CONFORMITY ~~ CONFORMITY_glove840B300d_uniform_weight_lyrics  
          CONFORMITY ~~ CONFORMITY_googlenews_idf_weight_lyrics         
          CONFORMITY ~~ CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM ~~ HEDONISM_glove840B300d_idf_weight_lyrics
          HEDONISM ~~ HEDONISM_glove840B300d_uniform_weight_lyrics  
          HEDONISM ~~ HEDONISM_googlenews_idf_weight_lyrics         
          HEDONISM ~~ HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER ~~ POWER_glove840B300d_idf_weight_lyrics
          POWER ~~ POWER_glove840B300d_uniform_weight_lyrics  
          POWER ~~ POWER_googlenews_idf_weight_lyrics         
          POWER ~~ POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY ~~ SECURITY_glove840B300d_idf_weight_lyrics
          SECURITY ~~ SECURITY_glove840B300d_uniform_weight_lyrics  
          SECURITY ~~ SECURITY_googlenews_idf_weight_lyrics         
          SECURITY ~~ SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF ~~ SELF_glove840B300d_idf_weight_lyrics
          SELF ~~ SELF_glove840B300d_uniform_weight_lyrics  
          SELF ~~ SELF_googlenews_idf_weight_lyrics         
          SELF ~~ SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION ~~ STIMULATION_glove840B300d_idf_weight_lyrics
          STIMULATION ~~ STIMULATION_glove840B300d_uniform_weight_lyrics  
          STIMULATION ~~ STIMULATION_googlenews_idf_weight_lyrics         
          STIMULATION ~~ STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION ~~ TRADITION_glove840B300d_idf_weight_lyrics
          TRADITION ~~ TRADITION_glove840B300d_uniform_weight_lyrics  
          TRADITION ~~ TRADITION_googlenews_idf_weight_lyrics         
          TRADITION ~~ TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_idf_weight_lyrics
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_idf_weight_lyrics         
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_uniform_weight_lyrics 
"

model_uniform_pretrained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY ~~ CONFORMITY_glove840B300d_uniform_weight_lyrics  
          CONFORMITY ~~ CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM ~~ HEDONISM_glove840B300d_uniform_weight_lyrics  
          HEDONISM ~~ HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER ~~ POWER_glove840B300d_uniform_weight_lyrics  
          POWER ~~ POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY ~~ SECURITY_glove840B300d_uniform_weight_lyrics  
          SECURITY ~~ SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF ~~ SELF_glove840B300d_uniform_weight_lyrics  
          SELF ~~ SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION ~~ STIMULATION_glove840B300d_uniform_weight_lyrics  
          STIMULATION ~~ STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION ~~ TRADITION_glove840B300d_uniform_weight_lyrics  
          TRADITION ~~ TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_uniform_weight_lyrics 
"

model_idf_pretrained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          ACHIEVEMENT ~~ ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE ~~ BENEVOLENCE_glove840B300d_idf_weight_lyrics
          BENEVOLENCE ~~ BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY ~~ CONFORMITY_glove840B300d_idf_weight_lyrics
          CONFORMITY ~~ CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM ~~ HEDONISM_glove840B300d_idf_weight_lyrics
          HEDONISM ~~ HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER ~~ POWER_glove840B300d_idf_weight_lyrics
          POWER ~~ POWER_googlenews_idf_weight_lyrics         
          
          SECURITY ~~ SECURITY_glove840B300d_idf_weight_lyrics
          SECURITY ~~ SECURITY_googlenews_idf_weight_lyrics         
          
          SELF ~~ SELF_glove840B300d_idf_weight_lyrics
          SELF ~~ SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION ~~ STIMULATION_glove840B300d_idf_weight_lyrics
          STIMULATION ~~ STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION ~~ TRADITION_glove840B300d_idf_weight_lyrics
          TRADITION ~~ TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM ~~ UNIVERSALISM_glove840B300d_idf_weight_lyrics
          UNIVERSALISM ~~ UNIVERSALISM_googlenews_idf_weight_lyrics         
"

model_all_mxm_trained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_uniform_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_far_idf_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_idf_fa                         
          ACHIEVEMENT ~~ ACHIEVEMENT_split_uniform_fa       
          
          BENEVOLENCE ~~ BENEVOLENCE_far_uniform_fa
          BENEVOLENCE ~~ BENEVOLENCE_far_idf_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_idf_fa                         
          BENEVOLENCE ~~ BENEVOLENCE_split_uniform_fa
          
          CONFORMITY ~~ CONFORMITY_far_uniform_fa
          CONFORMITY ~~ CONFORMITY_far_idf_fa
          CONFORMITY ~~ CONFORMITY_split_idf_fa                         
          CONFORMITY ~~ CONFORMITY_split_uniform_fa  
          
          HEDONISM ~~ HEDONISM_far_uniform_fa
          HEDONISM ~~ HEDONISM_far_idf_fa
          HEDONISM ~~ HEDONISM_split_idf_fa                         
          HEDONISM ~~ HEDONISM_split_uniform_fa 
          
          POWER ~~ POWER_far_uniform_fa
          POWER ~~ POWER_far_idf_fa
          POWER ~~ POWER_split_idf_fa                         
          POWER ~~ POWER_split_uniform_fa 
          
          SECURITY ~~ SECURITY_far_uniform_fa
          SECURITY ~~ SECURITY_far_idf_fa
          SECURITY ~~ SECURITY_split_idf_fa                         
          SECURITY ~~ SECURITY_split_uniform_fa   
          
          SELF ~~ SELF_far_uniform_fa
          SELF ~~ SELF_far_idf_fa
          SELF ~~ SELF_split_idf_fa                         
          SELF ~~ SELF_split_uniform_fa 
          
          STIMULATION ~~ STIMULATION_far_uniform_fa
          STIMULATION ~~ STIMULATION_far_idf_fa
          STIMULATION ~~ STIMULATION_split_idf_fa                         
          STIMULATION ~~ STIMULATION_split_uniform_fa  
          
          TRADITION ~~ TRADITION_far_uniform_fa
          TRADITION ~~ TRADITION_far_idf_fa
          TRADITION ~~ TRADITION_split_idf_fa                         
          TRADITION ~~ TRADITION_split_uniform_fa 
          
          UNIVERSALISM ~~ UNIVERSALISM_far_uniform_fa
          UNIVERSALISM ~~ UNIVERSALISM_far_idf_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_idf_fa                         
          UNIVERSALISM ~~ UNIVERSALISM_split_uniform_fa  
"

model_idf_mxm_trained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_idf_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_idf_fa                         
          
          BENEVOLENCE ~~ BENEVOLENCE_far_idf_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_idf_fa                         
          
          CONFORMITY ~~ CONFORMITY_far_idf_fa
          CONFORMITY ~~ CONFORMITY_split_idf_fa                         
          
          HEDONISM ~~ HEDONISM_far_idf_fa
          HEDONISM ~~ HEDONISM_split_idf_fa                         
          
          POWER ~~ POWER_far_idf_fa
          POWER ~~ POWER_split_idf_fa                         
          
          SECURITY ~~ SECURITY_far_idf_fa
          SECURITY ~~ SECURITY_split_idf_fa                         
          
          SELF ~~ SELF_far_idf_fa
          SELF ~~ SELF_split_idf_fa                         
          
          STIMULATION ~~ STIMULATION_far_idf_fa
          STIMULATION ~~ STIMULATION_split_idf_fa                         
          
          TRADITION ~~ TRADITION_far_idf_fa
          TRADITION ~~ TRADITION_split_idf_fa                         
          
          UNIVERSALISM ~~ UNIVERSALISM_far_idf_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_idf_fa                         
"

model_uniform_mxm_trained <- "
          ACHIEVEMENT ~~ ACHIEVEMENT_far_uniform_fa
          ACHIEVEMENT ~~ ACHIEVEMENT_split_uniform_fa       
          
          BENEVOLENCE ~~ BENEVOLENCE_far_uniform_fa
          BENEVOLENCE ~~ BENEVOLENCE_split_uniform_fa
          
          CONFORMITY ~~ CONFORMITY_far_uniform_fa
          CONFORMITY ~~ CONFORMITY_split_uniform_fa  
          
          HEDONISM ~~ HEDONISM_far_uniform_fa
          HEDONISM ~~ HEDONISM_split_uniform_fa 
          
          POWER ~~ POWER_far_uniform_fa
          POWER ~~ POWER_split_uniform_fa 
          
          SECURITY ~~ SECURITY_far_uniform_fa
          SECURITY ~~ SECURITY_split_uniform_fa   
          
          SELF ~~ SELF_far_uniform_fa
          SELF ~~ SELF_split_uniform_fa 
          
          STIMULATION ~~ STIMULATION_far_uniform_fa
          STIMULATION ~~ STIMULATION_split_uniform_fa  
          
          TRADITION ~~ TRADITION_far_uniform_fa
          TRADITION ~~ TRADITION_split_uniform_fa 
          
          UNIVERSALISM ~~ UNIVERSALISM_far_uniform_fa
          UNIVERSALISM ~~ UNIVERSALISM_split_uniform_fa                     
"

models <- list(model_all_all, 
               model_all_idf, model_all_uniform, 
               model_all_mxm_trained, model_all_pretrained, 
               model_idf_pretrained, model_uniform_pretrained, 
               model_idf_mxm_trained, model_uniform_mxm_trained)

names(models) <- c("model_all_all", 
                   "model_all_idf", "model_all_uniform", 
                   "model_all_mxm_trained", "model_all_pretrained", 
                   "model_idf_pretrained", "model_uniform_pretrained", 
                   "model_idf_mxm_trained", "model_uniform_mxm_trained")

rm(model_all_all, 
   model_all_idf, model_all_uniform, 
   model_all_mxm_trained, model_all_pretrained, 
   model_idf_pretrained, model_uniform_pretrained, 
   model_idf_mxm_trained, model_uniform_mxm_trained)