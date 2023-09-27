model_split_all <- "

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

model_split_algo <- "

          ACHIEVEMENT_glo =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          ACHIEVEMENT_goo =~
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          BENEVOLENCE_glo =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          BENEVOLENCE_goo =~
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          CONFORMITY_glo =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          CONFORMITY_goo =~
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          HEDONISM_glo =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          HEDONISM_goo =~
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          POWER_glo =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          POWER_goo =~
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 
          
          SECURITY_glo =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          SECURITY_goo =~
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF_glo =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          SELF_goo =~
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 
          
          STIMULATION_glo =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          STIMULATION_goo =~
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          TRADITION_glo =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          TRADITION_goo =~
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          UNIVERSALISM_glo =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          UNIVERSALISM_goo =~
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

          ACHIEVEMENT ~~ ACHIEVEMENT_glo
          ACHIEVEMENT ~~ ACHIEVEMENT_goo
          BENEVOLENCE ~~ BENEVOLENCE_glo
          BENEVOLENCE ~~ BENEVOLENCE_goo
          CONFORMITY  ~~ CONFORMITY_glo
          CONFORMITY  ~~ CONFORMITY_goo
          HEDONISM ~~ HEDONISM_glo
          HEDONISM ~~ HEDONISM_goo
          POWER ~~ POWER_glo
          POWER ~~ POWER_goo
          SECURITY ~~ SECURITY_glo
          SECURITY ~~ SECURITY_goo
          SELF ~~ SELF_glo
          SELF ~~ SELF_goo
          STIMULATION ~~ STIMULATION_glo
          STIMULATION ~~ STIMULATION_goo
          TRADITION ~~ TRADITION_glo
          TRADITION ~~ TRADITION_goo
          UNIVERSALISM ~~ UNIVERSALISM_glo
          UNIVERSALISM ~~ UNIVERSALISM_goo
          
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

model_uni_pre <- "

          ACHIEVEMENT_idf =~
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics         
          
          BENEVOLENCE_idf =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics
          + BENEVOLENCE_googlenews_uniform_weight_lyrics         
          
          CONFORMITY_idf =~
          + CONFORMITY_glove840B300d_uniform_weight_lyrics
          + CONFORMITY_googlenews_uniform_weight_lyrics         
          
          HEDONISM_idf =~
          + HEDONISM_glove840B300d_uniform_weight_lyrics
          + HEDONISM_googlenews_uniform_weight_lyrics         
          
          POWER_idf =~
          + POWER_glove840B300d_uniform_weight_lyrics
          + POWER_googlenews_uniform_weight_lyrics         
          
          SECURITY_idf =~
          + SECURITY_glove840B300d_uniform_weight_lyrics
          + SECURITY_googlenews_uniform_weight_lyrics         
          
          SELF_idf =~
          + SELF_glove840B300d_uniform_weight_lyrics
          + SELF_googlenews_uniform_weight_lyrics         
          
          STIMULATION_idf =~
          + STIMULATION_glove840B300d_uniform_weight_lyrics
          + STIMULATION_googlenews_uniform_weight_lyrics         
          
          TRADITION_idf =~
          + TRADITION_glove840B300d_uniform_weight_lyrics
          + TRADITION_googlenews_uniform_weight_lyrics         
          
          UNIVERSALISM_idf =~
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics
          + UNIVERSALISM_googlenews_uniform_weight_lyrics         

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
               model_split_algo, 
               model_idf_pre, model_uni_pre)

names(models) <- c("model_split_all", 
                    "model_split_algo", 
                    "model_idf_pre", "model_uni_pre")

rm(model_split_all, 
   model_split_algo, 
   model_idf_pre, model_uni_pre)