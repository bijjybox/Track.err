import pandas as pd, time 


start_time = time.clock()

filepath = "Data.txt"                                                                           
columns = ["User_I.D", "Waiting_Tme","Arival_Time","Location","Reqest"]                         
df = pd.DataFrame(data = None, index = None, columns = columns, dtype = str, copy = False)      
with open(filepath) as fp:                                                                      

	line = fp.readline()                                                                    

	i = 0
	while line:                                                                             
		word , _ = line.split(";")                                                      
		a,s,d,f,g = word.split(",")                                                     
		df.loc[i] = [d,a,s,f,g]                                                         
		line = fp.readline()                                                           
		i += 1

df['Waiting_Tme'] = df.Waiting_Tme.astype(float)                                                
df['Arival_Time'] = df.Arival_Time.astype(float)                                                
df = df.sort_values(['Waiting_Tme','Arival_Time'])                                              
df_high = df.loc[df.Waiting_Tme < 1]                                                            
df_med_temp = df.loc[df.Waiting_Tme < 3]                
df_medium = df_med_temp.loc[df_med_temp.Waiting_Tme >= 1]                           
df_low_temp = df.loc[df.Waiting_Tme < 5]
df_low = df_low_temp.loc[df_low_temp.Waiting_Tme >= 3]                      


df_high_health = df_high.loc[df_high.Reqest]                                        
df_high_health_jn = df_high_health.to_json()                                                    
df_high_env = df_high.loc[df_high.Reqest]                                      
df_high_env_jn = df_high_env.to_json()                                                          
df_high_agr = df_high.loc[df_high.Reqest]                                      
df_high_agr_jn = df_high_agr.to_json()                                                          


df_medium_health = df_medium.loc[df_medium.Reqest]                                  
df_medium_health_jn = df_medium_health.to_json()                                                
df_medium_env = df_medium.loc[df_medium.Reqest]                                
df_medium_env_jn = df_medium_env.to_json()                                                      
df_medium_agr = df_medium.loc[df_medium.Reqest]                                
df_medium_agr_jn = df_medium_agr.to_json()                                                      


df_low_health = df_low.loc[df_low.Reqest]                                           
df_low_health_jn = df_low_health.to_json()                                                      
df_low_env = df_low.loc[df_low.Reqest]                                         
df_low_env_jn = df_low_env.to_json()                                                            
df_low_agr = df_low.loc[df_low.Reqest]                                         
df_low_agr_jn = df_low_agr.to_json()                                                            


print time.clock() - start_time, "seconds"                                                      








