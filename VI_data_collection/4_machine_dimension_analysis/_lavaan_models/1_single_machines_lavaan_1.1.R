esem_all_all <- "
          
          efa('ACHIEVEMENT')*A_m =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          + ACHIEVEMENT_split_uniform                     
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          efa('BENEVOLENCE')*B_m =~
          + BENEVOLENCE_far_uniform
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          + BENEVOLENCE_split_uniform                     
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          efa('CONFORMITY')*C_m =~
          + CONFORMITY_far_uniform
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          + CONFORMITY_split_uniform                     
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          efa('HEDONISM')*H_m =~
          + HEDONISM_far_uniform
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          + HEDONISM_split_uniform                     
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          efa('POWER')*P_m =~
          + POWER_far_uniform
          + POWER_far_idf
          + POWER_split_idf                         
          + POWER_split_uniform                     
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 
          
          efa('SECURITY')*SEC_m =~
          + SECURITY_far_uniform
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          + SECURITY_split_uniform                     
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          efa('SELF')*SELF_m =~
          + SELF_far_uniform
          + SELF_far_idf
          + SELF_split_idf                         
          + SELF_split_uniform                     
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 
          
          efa('STIMULATION')*ST_m =~
          + STIMULATION_far_uniform
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          + STIMULATION_split_uniform                     
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          efa('TRADITION')*T_m =~
          + TRADITION_far_uniform
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          + TRADITION_split_uniform                     
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          efa('UNIVERSALISM')*U_m =~
          + UNIVERSALISM_far_uniform
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          + UNIVERSALISM_split_uniform                     
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

"

esem_mxm_split_all_achievement <- "
          A_m =~
          Amxm + Apre
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          + ACHIEVEMENT_split_uniform                     
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          "

esem_mxm_split_all <- "
          
          A_m =~
          Amxm + Apre
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          + ACHIEVEMENT_split_uniform                     
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
          
          B_m =~
          Bmxm + Bpre
          
          efa('Bmxm')*Bmxm =~
          + BENEVOLENCE_far_uniform
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          + BENEVOLENCE_split_uniform                     
          efa('Bpre')*Bpre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
          
          C_m =~
          Cmxm + Cpre
          
          efa('Cmxm')*Cmxm =~
          + CONFORMITY_far_uniform
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          + CONFORMITY_split_uniform     
          efa('Cpre')*Cpre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 
          
          H_m =~
          Hmxm + Hpre
          
          efa('Hmxm')*Hmxm =~
          + HEDONISM_far_uniform
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          + HEDONISM_split_uniform
          efa('Hpre')*Hpre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 
          
          P_m =~
          Pmxm + Ppre
          
          efa('Pmxm')*Pmxm =~
          + POWER_far_uniform
          + POWER_far_idf
          + POWER_split_idf                         
          + POWER_split_uniform
          efa('Ppre')*Ppre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 
          
          SEC_m =~
          SECmxm + SECpre
          
          efa('SECmxm')*SECmxm =~
          + SECURITY_far_uniform
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          + SECURITY_split_uniform
          efa('SECpre')*SECpre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 
          
          SELF_m =~
          SELFmxm + SELFpre
          
          efa('SELFmxm')*SELFmxm =~
          + SELF_far_uniform
          + SELF_far_idf
          + SELF_split_idf                         
          + SELF_split_uniform  
          efa('SELFpre')*SELFpre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 
          
          ST_m =~
          STmxm + STpre
          
          efa('STmxm')*STmxm =~
          + STIMULATION_far_uniform
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          + STIMULATION_split_uniform
          efa('STpre')*STpre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 
          
          T_m =~
          Tmxm + Tpre
          
          efa('Tmxm')*Tmxm =~
          + TRADITION_far_uniform
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          + TRADITION_split_uniform
          efa('Tpre')*Tpre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 
          
          U_m =~
          Umxm + Upre
          
          efa('Umxm')*Umxm =~
          + UNIVERSALISM_far_uniform
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          + UNIVERSALISM_split_uniform
          efa('Upre')*Upre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

"

esem_weight_split_idf <- "
          
          A_m =~
          Amxm + Apre
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          B_m =~
          Bmxm + Bpre
          
          efa('Bmxm')*Bmxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          efa('Bpre')*Bpre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          C_m =~
          Cmxm + Cpre
          
          efa('Cmxm')*Cmxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          efa('Cpre')*Cpre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          H_m =~
          Hmxm + Hpre
          
          efa('Hmxm')*Hmxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          efa('Hpre')*Hpre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          P_m =~
          Pmxm + Ppre
          
          efa('Pmxm')*Pmxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          efa('Ppre')*Ppre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SEC_m =~
          SECmxm + SECpre
          
          efa('SECmxm')*SECmxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          efa('SECpre')*SECpre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_m =~
          SELFmxm + SELFpre
          
          efa('SELFmxm')*SELFmxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          efa('SELFpre')*SELFpre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          ST_m =~
          STmxm + STpre
          
          efa('STmxm')*STmxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          efa('STpre')*STpre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics      
          
          T_m =~
          Tmxm + Tpre
          
          efa('Tmxm')*Tmxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          efa('Tpre')*Tpre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          U_m =~
          Umxm + Upre
          
          efa('Umxm')*Umxm =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          efa('Upre')*Upre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

"

esem_weight_split_uni <- "
          
          A_m =~
          Amxm + Apre
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_split_uniform                         
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics         
          
          B_m =~
          Bmxm + Bpre
          
          efa('Bmxm')*Bmxm =~
          + BENEVOLENCE_far_uniform
          + BENEVOLENCE_split_uniform                         
          efa('Bpre')*Bpre =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics
          + BENEVOLENCE_googlenews_uniform_weight_lyrics         
          
          C_m =~
          Cmxm + Cpre
          
          efa('Cmxm')*Cmxm =~
          + CONFORMITY_far_uniform
          + CONFORMITY_split_uniform                         
          efa('Cpre')*Cpre =~
          + CONFORMITY_glove840B300d_uniform_weight_lyrics
          + CONFORMITY_googlenews_uniform_weight_lyrics         
          
          H_m =~
          Hmxm + Hpre
          
          efa('Hmxm')*Hmxm =~
          + HEDONISM_far_uniform
          + HEDONISM_split_uniform                         
          efa('Hpre')*Hpre =~
          + HEDONISM_glove840B300d_uniform_weight_lyrics
          + HEDONISM_googlenews_uniform_weight_lyrics         
          
          P_m =~
          Pmxm + Ppre
          
          efa('Pmxm')*Pmxm =~
          + POWER_far_uniform
          + POWER_split_uniform                         
          efa('Ppre')*Ppre =~
          + POWER_glove840B300d_uniform_weight_lyrics
          + POWER_googlenews_uniform_weight_lyrics         
          
          SEC_m =~
          SECmxm + SECpre
          
          efa('SECmxm')*SECmxm =~
          + SECURITY_far_uniform
          + SECURITY_split_uniform                         
          efa('SECpre')*SECpre =~
          + SECURITY_glove840B300d_uniform_weight_lyrics
          + SECURITY_googlenews_uniform_weight_lyrics         
          
          SELF_m =~
          SELFmxm + SELFpre
          
          efa('SELFmxm')*SELFmxm =~
          + SELF_far_uniform
          + SELF_split_uniform                         
          efa('SELFpre')*SELFpre =~
          + SELF_glove840B300d_uniform_weight_lyrics
          + SELF_googlenews_uniform_weight_lyrics         
          
          ST_m =~
          STmxm + STpre
          
          efa('STmxm')*STmxm =~
          + STIMULATION_far_uniform
          + STIMULATION_split_uniform                         
          efa('STpre')*STpre =~
          + STIMULATION_glove840B300d_uniform_weight_lyrics
          + STIMULATION_googlenews_uniform_weight_lyrics      
          
          T_m =~
          Tmxm + Tpre
          
          efa('Tmxm')*Tmxm =~
          + TRADITION_far_uniform
          + TRADITION_split_uniform                         
          efa('Tpre')*Tpre =~
          + TRADITION_glove840B300d_uniform_weight_lyrics
          + TRADITION_googlenews_uniform_weight_lyrics         
          
          U_m =~
          Umxm + Upre
          
          efa('Umxm')*Umxm =~
          + UNIVERSALISM_far_uniform
          + UNIVERSALISM_split_uniform                         
          efa('Upre')*Upre =~
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics
          + UNIVERSALISM_googlenews_uniform_weight_lyrics         

"

esem_mxm_only_all <- "
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          + ACHIEVEMENT_split_uniform                     
          
          efa('Bmxm')*Bmxm =~
          + BENEVOLENCE_far_uniform
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          + BENEVOLENCE_split_uniform                     
          
          efa('Cmxm')*Cmxm =~
          + CONFORMITY_far_uniform
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          + CONFORMITY_split_uniform     
          
          efa('Hmxm')*Hmxm =~
          + HEDONISM_far_uniform
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          + HEDONISM_split_uniform
          
          efa('Pmxm')*Pmxm =~
          + POWER_far_uniform
          + POWER_far_idf
          + POWER_split_idf                         
          + POWER_split_uniform
          
          efa('SECmxm')*SECmxm =~
          + SECURITY_far_uniform
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          + SECURITY_split_uniform
          
          efa('SELFmxm')*SELFmxm =~
          + SELF_far_uniform
          + SELF_far_idf
          + SELF_split_idf                         
          + SELF_split_uniform  
          
          efa('STmxm')*STmxm =~
          + STIMULATION_far_uniform
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          + STIMULATION_split_uniform
          
          efa('Tmxm')*Tmxm =~
          + TRADITION_far_uniform
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          + TRADITION_split_uniform
          
          efa('Umxm')*Umxm =~
          + UNIVERSALISM_far_uniform
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          + UNIVERSALISM_split_uniform

"

esem_pre_only_all <- "
        
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics  
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          + ACHIEVEMENT_googlenews_uniform_weight_lyrics    
                   
          efa('Bpre')*Bpre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          + BENEVOLENCE_googlenews_uniform_weight_lyrics 
  
          efa('Cpre')*Cpre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_glove840B300d_uniform_weight_lyrics  
          + CONFORMITY_googlenews_idf_weight_lyrics         
          + CONFORMITY_googlenews_uniform_weight_lyrics 

          efa('Hpre')*Hpre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_glove840B300d_uniform_weight_lyrics  
          + HEDONISM_googlenews_idf_weight_lyrics         
          + HEDONISM_googlenews_uniform_weight_lyrics 

          efa('Ppre')*Ppre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_glove840B300d_uniform_weight_lyrics  
          + POWER_googlenews_idf_weight_lyrics         
          + POWER_googlenews_uniform_weight_lyrics 

          efa('SECpre')*SECpre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_glove840B300d_uniform_weight_lyrics  
          + SECURITY_googlenews_idf_weight_lyrics         
          + SECURITY_googlenews_uniform_weight_lyrics 

          efa('SELFpre')*SELFpre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_glove840B300d_uniform_weight_lyrics  
          + SELF_googlenews_idf_weight_lyrics         
          + SELF_googlenews_uniform_weight_lyrics 

          efa('STpre')*STpre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_glove840B300d_uniform_weight_lyrics  
          + STIMULATION_googlenews_idf_weight_lyrics         
          + STIMULATION_googlenews_uniform_weight_lyrics 

          efa('Tpre')*Tpre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_glove840B300d_uniform_weight_lyrics  
          + TRADITION_googlenews_idf_weight_lyrics         
          + TRADITION_googlenews_uniform_weight_lyrics 

          efa('Upre')*Upre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics  
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          + UNIVERSALISM_googlenews_uniform_weight_lyrics 

"

esem_mxm_only_split <- "
          
          A_m =~
          Auni + Aidf
          
          efa('Aidf')*Aidf =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf  
          efa('Auni')*Auni =~
          + ACHIEVEMENT_far_uniform
          + ACHIEVEMENT_split_uniform                     
          
          B_m =~
          Buni + Bidf
          
          efa('Bidf')*Bidf =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf   
          efa('Buni')*Buni =~
          + BENEVOLENCE_far_uniform
          + BENEVOLENCE_split_uniform                     
          
          C_m =~
          Cuni + Cidf
          
          efa('Cidf')*Cidf =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          efa('Cuni')*Cuni =~
          + CONFORMITY_far_uniform
          + CONFORMITY_split_uniform     
          
          H_m =~
          Huni + Hidf
          
          efa('Hidf')*Hidf =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf  
          efa('Huni')*Huni =~
          + HEDONISM_far_uniform
          + HEDONISM_split_uniform
          
          P_m =~
          Puni + Pidf
          
          efa('Pidf')*Pidf =~
          + POWER_far_idf
          + POWER_split_idf  
          efa('Puni')*Puni =~
          + POWER_far_uniform
          + POWER_split_uniform
          
          SEC_m =~
          SECuni + SECidf
          
          efa('SECidf')*SECidf =~
          + SECURITY_far_idf
          + SECURITY_split_idf  
          efa('SECuni')*SECuni =~
          + SECURITY_far_uniform
          + SECURITY_split_uniform
          
          SELF_m =~
          SELFuni + SELFidf
          
          efa('SELFidf')*SELFidf =~
          + SELF_far_idf
          + SELF_split_idf  
          efa('SELFuni')*SELFuni =~
          + SELF_far_uniform
          + SELF_split_uniform  

          ST_m =~
          STuni + STidf
          
          efa('STidf')*STidf =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf  
          efa('STuni')*STuni =~
          + STIMULATION_far_uniform
          + STIMULATION_split_uniform  

          T_m =~
          Tuni + Tidf
          
          efa('Tidf')*Tidf =~
          + TRADITION_far_idf
          + TRADITION_split_idf  
          efa('Tuni')*Tuni =~
          + TRADITION_far_uniform
          + TRADITION_split_uniform  
          
          U_m =~
          Uuni + Uidf
          
          efa('Uidf')*Uidf =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf  
          efa('Uuni')*Uuni =~
          + UNIVERSALISM_far_uniform
          + UNIVERSALISM_split_uniform

"

esem_pre_only_split <- "
          
          A_m =~
          Auni + Aidf
          
          efa('Aidf')*Aidf =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          efa('Auni')*Auni =~
          + ACHIEVEMENT_glove840B300d_uniform_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          B_m =~
          Buni + Bidf
          
          efa('Bidf')*Bidf =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics          
          efa('Buni')*Buni =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          C_m =~
          Cuni + Cidf
          
          efa('Cidf')*Cidf =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics                                
          efa('Cuni')*Cuni =~
          + CONFORMITY_glove840B300d_uniform_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics              
          
          H_m =~
          Huni + Hidf
          
          efa('Hidf')*Hidf =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          efa('Huni')*Huni =~
          + HEDONISM_glove840B300d_uniform_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          P_m =~
          Puni + Pidf
          
          efa('Pidf')*Pidf =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          efa('Puni')*Puni =~
          + POWER_glove840B300d_uniform_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SEC_m =~
          SECuni + SECidf
          
          efa('SECidf')*SECidf =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          efa('SECuni')*SECuni =~
          + SECURITY_glove840B300d_uniform_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_m =~
          SELFuni + SELFidf
          
          efa('SELFidf')*SELFidf =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          efa('SELFuni')*SELFuni =~
          + SELF_glove840B300d_uniform_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics           

          ST_m =~
          STuni + STidf
          
          efa('STidf')*STidf =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          efa('STuni')*STuni =~
          + STIMULATION_glove840B300d_uniform_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics           

          T_m =~
          Tuni + Tidf
          
          efa('Tidf')*Tidf =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          efa('Tuni')*Tuni =~
          + TRADITION_glove840B300d_uniform_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics           
          
          U_m =~
          Uuni + Uidf
          
          efa('Uidf')*Uidf =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         
          efa('Uuni')*Uuni =~
          + UNIVERSALISM_glove840B300d_uniform_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

"

esem_mxm_split_idf <- "
          
          A_m =~
          Amxm + Apre
          
          efa('Amxm')*Amxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          efa('Apre')*Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          B_m =~
          Bmxm + Bpre
          
          efa('Bmxm')*Bmxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          efa('Bpre')*Bpre =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          C_m =~
          Cmxm + Cpre
          
          efa('Cmxm')*Cmxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          efa('Cpre')*Cpre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          H_m =~
          Hmxm + Hpre
          
          efa('Hmxm')*Hmxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          efa('Hpre')*Hpre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          P_m =~
          Pmxm + Ppre
          
          efa('Pmxm')*Pmxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          efa('Ppre')*Ppre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SEC_m =~
          SECmxm + SECpre
          
          efa('SECmxm')*SECmxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          efa('SECpre')*SECpre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_m =~
          SELFmxm + SELFpre
          
          efa('SELFmxm')*SELFmxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          efa('SELFpre')*SELFpre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          ST_m =~
          STmxm + STpre
          
          efa('STmxm')*STmxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          efa('STpre')*STpre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          T_m =~
          Tmxm + Tpre
          
          efa('Tmxm')*Tmxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          efa('Tpre')*Tpre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          U_m =~
          Umxm + Upre
          
          efa('Umxm')*Umxm =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          efa('Upre')*Upre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

"
sem_mxm_split_idf <- "
          
          A_m =~
          Amxm + Apre
          
          Amxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          Apre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          B_m =~
          Bmxm + Bpre
          
         Bmxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
          Bpre =~
          + BENEVOLENCE_glove840B300d_uniform_weight_lyrics  
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          C_m =~
          Cmxm + Cpre
          
          Cmxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          Cpre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          H_m =~
          Hmxm + Hpre
          
          Hmxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          Hpre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          P_m =~
          Pmxm + Ppre
          
          Pmxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          Ppre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SEC_m =~
          SECmxm + SECpre
          
          SECmxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          SECpre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_m =~
          SELFmxm + SELFpre
          
          SELFmxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          SELFpre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          ST_m =~
          STmxm + STpre
          
          STmxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          STpre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          T_m =~
          Tmxm + Tpre
          
          Tmxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          Tpre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          U_m =~

          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          Upre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

"

model_split_idf <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_mxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_mxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          POWER_pre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_mxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          SECURITY_pre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_mxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          SELF_pre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_mxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_mxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          TRADITION_pre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
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

model_split_idf_nocor <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_mxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_mxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          POWER_pre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_mxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          SECURITY_pre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_mxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          SELF_pre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_mxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_mxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          TRADITION_pre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          UNIVERSALISM_pre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

          ACHIEVEMENT_mxm ~~ 0*BENEVOLENCE_mxm
          ACHIEVEMENT_mxm ~~ 0*BENEVOLENCE_pre
          ACHIEVEMENT_mxm ~~ 0*CONFORMITY_mxm
          ACHIEVEMENT_mxm ~~ 0*CONFORMITY_pre
          ACHIEVEMENT_mxm ~~ 0*HEDONISM_mxm
          ACHIEVEMENT_mxm ~~ 0*HEDONISM_pre
          ACHIEVEMENT_mxm ~~ 0*POWER_mxm
          ACHIEVEMENT_mxm ~~ 0*POWER_pre
          ACHIEVEMENT_mxm ~~ 0*SECURITY_mxm
          ACHIEVEMENT_mxm ~~ 0*SECURITY_pre
          ACHIEVEMENT_mxm ~~ 0*SELF_mxm
          ACHIEVEMENT_mxm ~~ 0*SELF_pre
          ACHIEVEMENT_mxm ~~ 0*STIMULATION_mxm
          ACHIEVEMENT_mxm ~~ 0*STIMULATION_pre
          ACHIEVEMENT_mxm ~~ 0*TRADITION_mxm
          ACHIEVEMENT_mxm ~~ 0*TRADITION_pre
          ACHIEVEMENT_mxm ~~ 0*UNIVERSALISM_mxm
          ACHIEVEMENT_mxm ~~ 0*UNIVERSALISM_pre
          
          ACHIEVEMENT_pre ~~ 0*BENEVOLENCE_mxm
          ACHIEVEMENT_pre ~~ 0*BENEVOLENCE_pre
          ACHIEVEMENT_pre ~~ 0*CONFORMITY_mxm
          ACHIEVEMENT_pre ~~ 0*CONFORMITY_pre
          ACHIEVEMENT_pre ~~ 0*HEDONISM_mxm
          ACHIEVEMENT_pre ~~ 0*HEDONISM_pre
          ACHIEVEMENT_pre ~~ 0*POWER_mxm
          ACHIEVEMENT_pre ~~ 0*POWER_pre
          ACHIEVEMENT_pre ~~ 0*SECURITY_mxm
          ACHIEVEMENT_pre ~~ 0*SECURITY_pre
          ACHIEVEMENT_pre ~~ 0*SELF_mxm
          ACHIEVEMENT_pre ~~ 0*SELF_pre
          ACHIEVEMENT_pre ~~ 0*STIMULATION_mxm
          ACHIEVEMENT_pre ~~ 0*STIMULATION_pre
          ACHIEVEMENT_pre ~~ 0*TRADITION_mxm
          ACHIEVEMENT_pre ~~ 0*TRADITION_pre
          ACHIEVEMENT_pre ~~ 0*UNIVERSALISM_mxm
          ACHIEVEMENT_pre ~~ 0*UNIVERSALISM_pre
          
          BENEVOLENCE_mxm ~~ 0*CONFORMITY_mxm
          BENEVOLENCE_mxm ~~ 0*CONFORMITY_pre
          BENEVOLENCE_mxm ~~ 0*HEDONISM_mxm
          BENEVOLENCE_mxm ~~ 0*HEDONISM_pre
          BENEVOLENCE_mxm ~~ 0*POWER_mxm
          BENEVOLENCE_mxm ~~ 0*POWER_pre
          BENEVOLENCE_mxm ~~ 0*SECURITY_mxm
          BENEVOLENCE_mxm ~~ 0*SECURITY_pre
          BENEVOLENCE_mxm ~~ 0*SELF_mxm
          BENEVOLENCE_mxm ~~ 0*SELF_pre
          BENEVOLENCE_mxm ~~ 0*STIMULATION_mxm
          BENEVOLENCE_mxm ~~ 0*STIMULATION_pre
          BENEVOLENCE_mxm ~~ 0*TRADITION_mxm
          BENEVOLENCE_mxm ~~ 0*TRADITION_pre
          BENEVOLENCE_mxm ~~ 0*UNIVERSALISM_mxm
          BENEVOLENCE_mxm ~~ 0*UNIVERSALISM_pre
          
          BENEVOLENCE_pre ~~ 0*CONFORMITY_mxm
          BENEVOLENCE_pre ~~ 0*CONFORMITY_pre
          BENEVOLENCE_pre ~~ 0*HEDONISM_mxm
          BENEVOLENCE_pre ~~ 0*HEDONISM_pre
          BENEVOLENCE_pre ~~ 0*POWER_mxm
          BENEVOLENCE_pre ~~ 0*POWER_pre
          BENEVOLENCE_pre ~~ 0*SECURITY_mxm
          BENEVOLENCE_pre ~~ 0*SECURITY_pre
          BENEVOLENCE_pre ~~ 0*SELF_mxm
          BENEVOLENCE_pre ~~ 0*SELF_pre
          BENEVOLENCE_pre ~~ 0*STIMULATION_mxm
          BENEVOLENCE_pre ~~ 0*STIMULATION_pre
          BENEVOLENCE_pre ~~ 0*TRADITION_mxm
          BENEVOLENCE_pre ~~ 0*TRADITION_pre
          BENEVOLENCE_pre ~~ 0*UNIVERSALISM_mxm
          BENEVOLENCE_pre ~~ 0*UNIVERSALISM_pre
          
          CONFORMITY_mxm ~~ 0*HEDONISM_mxm
          CONFORMITY_mxm ~~ 0*HEDONISM_pre
          CONFORMITY_mxm ~~ 0*POWER_mxm
          CONFORMITY_mxm ~~ 0*POWER_pre
          CONFORMITY_mxm ~~ 0*SECURITY_mxm
          CONFORMITY_mxm ~~ 0*SECURITY_pre
          CONFORMITY_mxm ~~ 0*SELF_mxm
          CONFORMITY_mxm ~~ 0*SELF_pre
          CONFORMITY_mxm ~~ 0*STIMULATION_mxm
          CONFORMITY_mxm ~~ 0*STIMULATION_pre
          CONFORMITY_mxm ~~ 0*TRADITION_mxm
          CONFORMITY_mxm ~~ 0*TRADITION_pre
          CONFORMITY_mxm ~~ 0*UNIVERSALISM_mxm
          CONFORMITY_mxm ~~ 0*UNIVERSALISM_pre
          
          CONFORMITY_pre ~~ 0*HEDONISM_mxm
          CONFORMITY_pre ~~ 0*HEDONISM_pre
          CONFORMITY_pre ~~ 0*POWER_mxm
          CONFORMITY_pre ~~ 0*POWER_pre
          CONFORMITY_pre ~~ 0*SECURITY_mxm
          CONFORMITY_pre ~~ 0*SECURITY_pre
          CONFORMITY_pre ~~ 0*SELF_mxm
          CONFORMITY_pre ~~ 0*SELF_pre
          CONFORMITY_pre ~~ 0*STIMULATION_mxm
          CONFORMITY_pre ~~ 0*STIMULATION_pre
          CONFORMITY_pre ~~ 0*TRADITION_mxm
          CONFORMITY_pre ~~ 0*TRADITION_pre
          CONFORMITY_pre ~~ 0*UNIVERSALISM_mxm
          CONFORMITY_pre ~~ 0*UNIVERSALISM_pre
          
          HEDONISM_mxm ~~ 0*POWER_mxm
          HEDONISM_mxm ~~ 0*POWER_pre
          HEDONISM_mxm ~~ 0*SECURITY_mxm
          HEDONISM_mxm ~~ 0*SECURITY_pre
          HEDONISM_mxm ~~ 0*SELF_mxm
          HEDONISM_mxm ~~ 0*SELF_pre
          HEDONISM_mxm ~~ 0*STIMULATION_mxm
          HEDONISM_mxm ~~ 0*STIMULATION_pre
          HEDONISM_mxm ~~ 0*TRADITION_mxm
          HEDONISM_mxm ~~ 0*TRADITION_pre
          HEDONISM_mxm ~~ 0*UNIVERSALISM_mxm
          HEDONISM_mxm ~~ 0*UNIVERSALISM_pre
          
          HEDONISM_pre ~~ 0*POWER_mxm
          HEDONISM_pre ~~ 0*POWER_pre
          HEDONISM_pre ~~ 0*SECURITY_mxm
          HEDONISM_pre ~~ 0*SECURITY_pre
          HEDONISM_pre ~~ 0*SELF_mxm
          HEDONISM_pre ~~ 0*SELF_pre
          HEDONISM_pre ~~ 0*STIMULATION_mxm
          HEDONISM_pre ~~ 0*STIMULATION_pre
          HEDONISM_pre ~~ 0*TRADITION_mxm
          HEDONISM_pre ~~ 0*TRADITION_pre
          HEDONISM_pre ~~ 0*UNIVERSALISM_mxm
          HEDONISM_pre ~~ 0*UNIVERSALISM_pre
          
          POWER_mxm ~~ 0*SECURITY_mxm
          POWER_mxm ~~ 0*SECURITY_pre
          POWER_mxm ~~ 0*SELF_mxm
          POWER_mxm ~~ 0*SELF_pre
          POWER_mxm ~~ 0*STIMULATION_mxm
          POWER_mxm ~~ 0*STIMULATION_pre
          POWER_mxm ~~ 0*TRADITION_mxm
          POWER_mxm ~~ 0*TRADITION_pre
          POWER_mxm ~~ 0*UNIVERSALISM_mxm
          POWER_mxm ~~ 0*UNIVERSALISM_pre
          
          POWER_pre ~~ 0*SECURITY_mxm
          POWER_pre ~~ 0*SECURITY_pre
          POWER_pre ~~ 0*SELF_mxm
          POWER_pre ~~ 0*SELF_pre
          POWER_pre ~~ 0*STIMULATION_mxm
          POWER_pre ~~ 0*STIMULATION_pre
          POWER_pre ~~ 0*TRADITION_mxm
          POWER_pre ~~ 0*TRADITION_pre
          POWER_pre ~~ 0*UNIVERSALISM_mxm
          POWER_pre ~~ 0*UNIVERSALISM_pre

          SECURITY_mxm ~~ 0*SELF_mxm
          SECURITY_mxm ~~ 0*SELF_pre
          SECURITY_mxm ~~ 0*STIMULATION_mxm
          SECURITY_mxm ~~ 0*STIMULATION_pre
          SECURITY_mxm ~~ 0*TRADITION_mxm
          SECURITY_mxm ~~ 0*TRADITION_pre
          SECURITY_mxm ~~ 0*UNIVERSALISM_mxm
          SECURITY_mxm ~~ 0*UNIVERSALISM_pre          
          
          SECURITY_pre ~~ 0*SELF_mxm
          SECURITY_pre ~~ 0*SELF_pre
          SECURITY_pre ~~ 0*STIMULATION_mxm
          SECURITY_pre ~~ 0*STIMULATION_pre
          SECURITY_pre ~~ 0*TRADITION_mxm
          SECURITY_pre ~~ 0*TRADITION_pre
          SECURITY_pre ~~ 0*UNIVERSALISM_mxm
          SECURITY_pre ~~ 0*UNIVERSALISM_pre
          
          SELF_mxm ~~ 0*STIMULATION_mxm
          SELF_mxm ~~ 0*STIMULATION_pre
          SELF_mxm ~~ 0*TRADITION_mxm
          SELF_mxm ~~ 0*TRADITION_pre
          SELF_mxm ~~ 0*UNIVERSALISM_mxm
          SELF_mxm ~~ 0*UNIVERSALISM_pre
          
          SELF_pre ~~ 0*STIMULATION_mxm
          SELF_pre ~~ 0*STIMULATION_pre
          SELF_pre ~~ 0*TRADITION_mxm
          SELF_pre ~~ 0*TRADITION_pre
          SELF_pre ~~ 0*UNIVERSALISM_mxm
          SELF_pre ~~ 0*UNIVERSALISM_pre
          
          STIMULATION_mxm ~~ 0*TRADITION_mxm
          STIMULATION_mxm ~~ 0*TRADITION_pre
          STIMULATION_mxm ~~ 0*UNIVERSALISM_mxm
          STIMULATION_mxm ~~ 0*UNIVERSALISM_pre
          
          STIMULATION_pre ~~ 0*TRADITION_mxm
          STIMULATION_pre ~~ 0*TRADITION_pre
          STIMULATION_pre ~~ 0*UNIVERSALISM_mxm
          STIMULATION_pre ~~ 0*UNIVERSALISM_pre
          
          TRADITION_mxm ~~ 0*UNIVERSALISM_mxm
          TRADITION_mxm ~~ 0*UNIVERSALISM_pre
          
          TRADITION_pre ~~ 0*UNIVERSALISM_mxm
          TRADITION_pre ~~ 0*UNIVERSALISM_pre
          
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

model_split_idf_nocor_1 <- "

          ACHIEVEMENT_mxm =~
          + ACHIEVEMENT_far_idf
          + ACHIEVEMENT_split_idf                         
          ACHIEVEMENT_pre =~
          + ACHIEVEMENT_glove840B300d_idf_weight_lyrics
          + ACHIEVEMENT_googlenews_idf_weight_lyrics         
          
          BENEVOLENCE_mxm =~
          + BENEVOLENCE_far_idf
          + BENEVOLENCE_split_idf                         
           BENEVOLENCE_pre =~
          + BENEVOLENCE_glove840B300d_idf_weight_lyrics
          + BENEVOLENCE_googlenews_idf_weight_lyrics         
          
          CONFORMITY_mxm =~
          + CONFORMITY_far_idf
          + CONFORMITY_split_idf                         
          CONFORMITY_pre =~
          + CONFORMITY_glove840B300d_idf_weight_lyrics
          + CONFORMITY_googlenews_idf_weight_lyrics         
          
          HEDONISM_mxm =~
          + HEDONISM_far_idf
          + HEDONISM_split_idf                         
          HEDONISM_pre =~
          + HEDONISM_glove840B300d_idf_weight_lyrics
          + HEDONISM_googlenews_idf_weight_lyrics         
          
          POWER_mxm =~
          + POWER_far_idf
          + POWER_split_idf                         
          POWER_pre =~
          + POWER_glove840B300d_idf_weight_lyrics
          + POWER_googlenews_idf_weight_lyrics         
          
          SECURITY_mxm =~
          + SECURITY_far_idf
          + SECURITY_split_idf                         
          SECURITY_pre =~
          + SECURITY_glove840B300d_idf_weight_lyrics
          + SECURITY_googlenews_idf_weight_lyrics         
          
          SELF_mxm =~
          + SELF_far_idf
          + SELF_split_idf                         
          SELF_pre =~
          + SELF_glove840B300d_idf_weight_lyrics
          + SELF_googlenews_idf_weight_lyrics         
          
          STIMULATION_mxm =~
          + STIMULATION_far_idf
          + STIMULATION_split_idf                         
          STIMULATION_pre =~
          + STIMULATION_glove840B300d_idf_weight_lyrics
          + STIMULATION_googlenews_idf_weight_lyrics         
          
          TRADITION_mxm =~
          + TRADITION_far_idf
          + TRADITION_split_idf                         
          TRADITION_pre =~
          + TRADITION_glove840B300d_idf_weight_lyrics
          + TRADITION_googlenews_idf_weight_lyrics         
          
          UNIVERSALISM_mxm =~
          + UNIVERSALISM_far_idf
          + UNIVERSALISM_split_idf                         
          UNIVERSALISM_pre =~
          + UNIVERSALISM_glove840B300d_idf_weight_lyrics
          + UNIVERSALISM_googlenews_idf_weight_lyrics         

          ACHIEVEMENT_mxm ~~ 0*BENEVOLENCE_mxm
          ACHIEVEMENT_mxm ~~ 0*BENEVOLENCE_pre
          ACHIEVEMENT_mxm ~~ 0*CONFORMITY_mxm
          ACHIEVEMENT_mxm ~~ 0*CONFORMITY_pre
          ACHIEVEMENT_mxm ~~ 0*HEDONISM_mxm
          ACHIEVEMENT_mxm ~~ 0*HEDONISM_pre
          ACHIEVEMENT_mxm ~~ 0*POWER_mxm
          ACHIEVEMENT_mxm ~~ 0*POWER_pre
          ACHIEVEMENT_mxm ~~ 0*SECURITY_mxm
          ACHIEVEMENT_mxm ~~ 0*SECURITY_pre
          ACHIEVEMENT_mxm ~~ 0*SELF_mxm
          ACHIEVEMENT_mxm ~~ 0*SELF_pre
          ACHIEVEMENT_mxm ~~ 0*STIMULATION_mxm
          ACHIEVEMENT_mxm ~~ 0*STIMULATION_pre
          ACHIEVEMENT_mxm ~~ 0*TRADITION_mxm
          ACHIEVEMENT_mxm ~~ 0*TRADITION_pre
          ACHIEVEMENT_mxm ~~ 0*UNIVERSALISM_mxm
          ACHIEVEMENT_mxm ~~ 0*UNIVERSALISM_pre
          
          ACHIEVEMENT_pre ~~ 0*BENEVOLENCE_mxm
          ACHIEVEMENT_pre ~~ 0*BENEVOLENCE_pre
          ACHIEVEMENT_pre ~~ 0*CONFORMITY_mxm
          ACHIEVEMENT_pre ~~ 0*CONFORMITY_pre
          ACHIEVEMENT_pre ~~ 0*HEDONISM_mxm
          ACHIEVEMENT_pre ~~ 0*HEDONISM_pre
          ACHIEVEMENT_pre ~~ 0*POWER_mxm
          ACHIEVEMENT_pre ~~ 0*POWER_pre
          ACHIEVEMENT_pre ~~ 0*SECURITY_mxm
          ACHIEVEMENT_pre ~~ 0*SECURITY_pre
          ACHIEVEMENT_pre ~~ 0*SELF_mxm
          ACHIEVEMENT_pre ~~ 0*SELF_pre
          ACHIEVEMENT_pre ~~ 0*STIMULATION_mxm
          ACHIEVEMENT_pre ~~ 0*STIMULATION_pre
          ACHIEVEMENT_pre ~~ 0*TRADITION_mxm
          ACHIEVEMENT_pre ~~ 0*TRADITION_pre
          ACHIEVEMENT_pre ~~ 0*UNIVERSALISM_mxm
          ACHIEVEMENT_pre ~~ 0*UNIVERSALISM_pre
          
          BENEVOLENCE_mxm ~~ 0*CONFORMITY_mxm
          BENEVOLENCE_mxm ~~ 0*CONFORMITY_pre
          BENEVOLENCE_mxm ~~ 0*HEDONISM_mxm
          BENEVOLENCE_mxm ~~ 0*HEDONISM_pre
          BENEVOLENCE_mxm ~~ 0*POWER_mxm
          BENEVOLENCE_mxm ~~ 0*POWER_pre
          BENEVOLENCE_mxm ~~ 0*SECURITY_mxm
          BENEVOLENCE_mxm ~~ 0*SECURITY_pre
          BENEVOLENCE_mxm ~~ 0*SELF_mxm
          BENEVOLENCE_mxm ~~ 0*SELF_pre
          BENEVOLENCE_mxm ~~ 0*STIMULATION_mxm
          BENEVOLENCE_mxm ~~ 0*STIMULATION_pre
          BENEVOLENCE_mxm ~~ 0*TRADITION_mxm
          BENEVOLENCE_mxm ~~ 0*TRADITION_pre
          BENEVOLENCE_mxm ~~ 0*UNIVERSALISM_mxm
          BENEVOLENCE_mxm ~~ 0*UNIVERSALISM_pre
          
          BENEVOLENCE_pre ~~ 0*CONFORMITY_mxm
          BENEVOLENCE_pre ~~ 0*CONFORMITY_pre
          BENEVOLENCE_pre ~~ 0*HEDONISM_mxm
          BENEVOLENCE_pre ~~ 0*HEDONISM_pre
          BENEVOLENCE_pre ~~ 0*POWER_mxm
          BENEVOLENCE_pre ~~ 0*POWER_pre
          BENEVOLENCE_pre ~~ 0*SECURITY_mxm
          BENEVOLENCE_pre ~~ 0*SECURITY_pre
          BENEVOLENCE_pre ~~ 0*SELF_mxm
          BENEVOLENCE_pre ~~ 0*SELF_pre
          BENEVOLENCE_pre ~~ 0*STIMULATION_mxm
          BENEVOLENCE_pre ~~ 0*STIMULATION_pre
          BENEVOLENCE_pre ~~ 0*TRADITION_mxm
          BENEVOLENCE_pre ~~ 0*TRADITION_pre
          BENEVOLENCE_pre ~~ 0*UNIVERSALISM_mxm
          BENEVOLENCE_pre ~~ 0*UNIVERSALISM_pre
          
          CONFORMITY_mxm ~~ 0*HEDONISM_mxm
          CONFORMITY_mxm ~~ 0*HEDONISM_pre
          CONFORMITY_mxm ~~ 0*POWER_mxm
          CONFORMITY_mxm ~~ 0*POWER_pre
          CONFORMITY_mxm ~~ 0*SECURITY_mxm
          CONFORMITY_mxm ~~ 0*SECURITY_pre
          CONFORMITY_mxm ~~ 0*SELF_mxm
          CONFORMITY_mxm ~~ 0*SELF_pre
          CONFORMITY_mxm ~~ 0*STIMULATION_mxm
          CONFORMITY_mxm ~~ 0*STIMULATION_pre
          CONFORMITY_mxm ~~ 0*TRADITION_mxm
          CONFORMITY_mxm ~~ 0*TRADITION_pre
          CONFORMITY_mxm ~~ 0*UNIVERSALISM_mxm
          CONFORMITY_mxm ~~ 0*UNIVERSALISM_pre
          
          CONFORMITY_pre ~~ 0*HEDONISM_mxm
          CONFORMITY_pre ~~ 0*HEDONISM_pre
          CONFORMITY_pre ~~ 0*POWER_mxm
          CONFORMITY_pre ~~ 0*POWER_pre
          CONFORMITY_pre ~~ 0*SECURITY_mxm
          CONFORMITY_pre ~~ 0*SECURITY_pre
          CONFORMITY_pre ~~ 0*SELF_mxm
          CONFORMITY_pre ~~ 0*SELF_pre
          CONFORMITY_pre ~~ 0*STIMULATION_mxm
          CONFORMITY_pre ~~ 0*STIMULATION_pre
          CONFORMITY_pre ~~ 0*TRADITION_mxm
          CONFORMITY_pre ~~ 0*TRADITION_pre
          CONFORMITY_pre ~~ 0*UNIVERSALISM_mxm
          CONFORMITY_pre ~~ 0*UNIVERSALISM_pre
          
          HEDONISM_mxm ~~ 0*POWER_mxm
          HEDONISM_mxm ~~ 0*POWER_pre
          HEDONISM_mxm ~~ 0*SECURITY_mxm
          HEDONISM_mxm ~~ 0*SECURITY_pre
          HEDONISM_mxm ~~ 0*SELF_mxm
          HEDONISM_mxm ~~ 0*SELF_pre
          HEDONISM_mxm ~~ 0*STIMULATION_mxm
          HEDONISM_mxm ~~ 0*STIMULATION_pre
          HEDONISM_mxm ~~ 0*TRADITION_mxm
          HEDONISM_mxm ~~ 0*TRADITION_pre
          HEDONISM_mxm ~~ 0*UNIVERSALISM_mxm
          HEDONISM_mxm ~~ 0*UNIVERSALISM_pre
          
          HEDONISM_pre ~~ 0*POWER_mxm
          HEDONISM_pre ~~ 0*POWER_pre
          HEDONISM_pre ~~ 0*SECURITY_mxm
          HEDONISM_pre ~~ 0*SECURITY_pre
          HEDONISM_pre ~~ 0*SELF_mxm
          HEDONISM_pre ~~ 0*SELF_pre
          HEDONISM_pre ~~ 0*STIMULATION_mxm
          HEDONISM_pre ~~ 0*STIMULATION_pre
          HEDONISM_pre ~~ 0*TRADITION_mxm
          HEDONISM_pre ~~ 0*TRADITION_pre
          HEDONISM_pre ~~ 0*UNIVERSALISM_mxm
          HEDONISM_pre ~~ 0*UNIVERSALISM_pre
          
          POWER_mxm ~~ 0*SECURITY_mxm
          POWER_mxm ~~ 0*SECURITY_pre
          POWER_mxm ~~ 0*SELF_mxm
          POWER_mxm ~~ 0*SELF_pre
          POWER_mxm ~~ 0*STIMULATION_mxm
          POWER_mxm ~~ 0*STIMULATION_pre
          POWER_mxm ~~ 0*TRADITION_mxm
          POWER_mxm ~~ 0*TRADITION_pre
          POWER_mxm ~~ 0*UNIVERSALISM_mxm
          POWER_mxm ~~ 0*UNIVERSALISM_pre
          
          POWER_pre ~~ 0*SECURITY_mxm
          POWER_pre ~~ 0*SECURITY_pre
          POWER_pre ~~ 0*SELF_mxm
          POWER_pre ~~ 0*SELF_pre
          POWER_pre ~~ 0*STIMULATION_mxm
          POWER_pre ~~ 0*STIMULATION_pre
          POWER_pre ~~ 0*TRADITION_mxm
          POWER_pre ~~ 0*TRADITION_pre
          POWER_pre ~~ 0*UNIVERSALISM_mxm
          POWER_pre ~~ 0*UNIVERSALISM_pre

          SECURITY_mxm ~~ 0*SELF_mxm
          SECURITY_mxm ~~ 0*SELF_pre
          SECURITY_mxm ~~ 0*STIMULATION_mxm
          SECURITY_mxm ~~ 0*STIMULATION_pre
          SECURITY_mxm ~~ 0*TRADITION_mxm
          SECURITY_mxm ~~ 0*TRADITION_pre
          SECURITY_mxm ~~ 0*UNIVERSALISM_mxm
          SECURITY_mxm ~~ 0*UNIVERSALISM_pre          
          
          SECURITY_pre ~~ 0*SELF_mxm
          SECURITY_pre ~~ 0*SELF_pre
          SECURITY_pre ~~ 0*STIMULATION_mxm
          SECURITY_pre ~~ 0*STIMULATION_pre
          SECURITY_pre ~~ 0*TRADITION_mxm
          SECURITY_pre ~~ 0*TRADITION_pre
          SECURITY_pre ~~ 0*UNIVERSALISM_mxm
          SECURITY_pre ~~ 0*UNIVERSALISM_pre
          
          SELF_mxm ~~ 0*STIMULATION_mxm
          SELF_mxm ~~ 0*STIMULATION_pre
          SELF_mxm ~~ 0*TRADITION_mxm
          SELF_mxm ~~ 0*TRADITION_pre
          SELF_mxm ~~ 0*UNIVERSALISM_mxm
          SELF_mxm ~~ 0*UNIVERSALISM_pre
          
          SELF_pre ~~ 0*STIMULATION_mxm
          SELF_pre ~~ 0*STIMULATION_pre
          SELF_pre ~~ 0*TRADITION_mxm
          SELF_pre ~~ 0*TRADITION_pre
          SELF_pre ~~ 0*UNIVERSALISM_mxm
          SELF_pre ~~ 0*UNIVERSALISM_pre
          
          STIMULATION_mxm ~~ 0*TRADITION_mxm
          STIMULATION_mxm ~~ 0*TRADITION_pre
          STIMULATION_mxm ~~ 0*UNIVERSALISM_mxm
          STIMULATION_mxm ~~ 0*UNIVERSALISM_pre
          
          STIMULATION_pre ~~ 0*TRADITION_mxm
          STIMULATION_pre ~~ 0*TRADITION_pre
          STIMULATION_pre ~~ 0*UNIVERSALISM_mxm
          STIMULATION_pre ~~ 0*UNIVERSALISM_pre
          
          TRADITION_mxm ~~ 0*UNIVERSALISM_mxm
          TRADITION_mxm ~~ 0*UNIVERSALISM_pre
          
          TRADITION_pre ~~ 0*UNIVERSALISM_mxm
          TRADITION_pre ~~ 0*UNIVERSALISM_pre
          
"