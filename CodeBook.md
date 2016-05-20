Code Book for the Tidy dataset
=============================

This codebook summarises the process of getting "tidy.txt" as a new dataset.

Data Source
-----------
This new dataset is derived from two datasets "Train" and "Test".

New variable
------------
There are two (2) new variables added in the dataset such as:

<ol>
<li>"activity" - Contain 6 type of activities (e.g. walking, walking_upstairs, walking_downstairs, sitting, standing and laying)</li>
<li>"subject" - The ID of the test subject and it contains 30 subjects</li>
</ol>

Activity Label
--------------
There are new label for the activity based on "activity_labels.txt" 
<ol>
<li>WALKING</li>
<li>WALKING_UPSTAIRS</li>
<li>WALKING_DOWNSTAIRS</li>
<li>SITTING</li>
<li>STANDING</li>
<li>LAYING</li>
</ol>

Existing Variables
--------------
There are 86 exiting variables extracted from the original dataset such as 

<ol>                       
<li>"tBodyAccMeanX"</li>                    
<li>"tBodyAccMeanY"</li>                      
<li>"tBodyAccMeanZ"</li>                     
<li>"tBodyAccStdX"</li>                       
<li>"tBodyAccStdY"</li>                       
<li>"tBodyAccStdZ"</li>                       
<li>"tGravityAccMeanX"</li>                   
<li>"tGravityAccMeanY"</li>                  
<li>"tGravityAccMeanZ"</li>                   
<li>"tGravityAccStdX"</li>                    
<li>"tGravityAccStdY"</li>                    
<li>"tGravityAccStdZ"</li>                    
<li>"tBodyAccJerkMeanX"</li>                 
<li>"tBodyAccJerkMeanY"</li>                  
<li>"tBodyAccJerkMeanZ"</li>                  
<li>"tBodyAccJerkStdX"</li>                  
<li>"tBodyAccJerkStdY"</li>                  
<li>"tBodyAccJerkStdZ"</li>                  
<li>"tBodyGyroMeanX"</li>                     
<li>"tBodyGyroMeanY"</li>                     
<li>"tBodyGyroMeanZ"</li>                     
<li>"tBodyGyroStdX"</li>                      
<li>"tBodyGyroStdY"</li>                     
<li>"tBodyGyroStdZ"</li>                     
<li>"tBodyGyroJerkMeanX"</li>                
<li>"tBodyGyroJerkMeanY"</li>               
<li>"tBodyGyroJerkMeanZ"</li>              
<li>"tBodyGyroJerkStdX"</li>                 
<li>"tBodyGyroJerkStdY"</li>               
<li>"tBodyGyroJerkStdZ"</li>               
<li>"tBodyAccMagMean"</li>             
<li>"tBodyAccMagStd"</li>       
<li>"tGravityAccMagMean"</li>                
<li>"tGravityAccMagStd"</li>                  
<li>"tBodyAccJerkMagMean"</li>                
<li>"tBodyAccJerkMagStd"</li>                 
<li>"tBodyGyroMagMean"</li>                   
<li>"tBodyGyroMagStd"</li>                   
<li>"tBodyGyroJerkMagMean"</li>
<li>"tBodyGyroJerkMagStd"</li>                     
<li>"fBodyAccMeanX"</li>                      
<li>"fBodyAccMeanY"</li>                      
<li>"fBodyAccMeanZ"</li>                     
<li>"fBodyAccStdX"</li>                       
<li>"fBodyAccStdY"</li>                       
<li>"fBodyAccStdZ"</li>                       
<li>"fBodyAccMeanFreqX"</li>                  
<li>"fBodyAccMeanFreqY"</li>                 
<li>"fBodyAccMeanFreqZ"</li>                 
<li>"fBodyAccJerkMeanX"</li>                
<li>"fBodyAccJerkMeanY"</li>              
<li>"fBodyAccJerkMeanZ"</li>               
<li>"fBodyAccJerkStdX"</li>                  
<li>"fBodyAccJerkStdY"</li>                  
<li>"fBodyAccJerkStdZ"</li>               
<li>"fBodyAccJerkMeanFreqX"</li>        
<li>"fBodyAccJerkMeanFreqY"</li>    
<li>"fBodyAccJerkMeanFreqZ"</li>             
<li>"fBodyGyroMeanX"</li>                  
<li>"fBodyGyroMeanY"</li>                     
<li>"fBodyGyroMeanZ"</li>                     
<li>"fBodyGyroStdX"</li>                      
<li>"fBodyGyroStdY"</li>                     
<li>"fBodyGyroStdZ"</li>                      
<li>"fBodyGyroMeanFreqX"</li>                 
<li>"fBodyGyroMeanFreqY"</li>                 
<li>"fBodyGyroMeanFreqZ"</li>                 
<li>"fBodyAccMagMean"</li>                   
<li>"fBodyAccMagStd"</li>                     
<li>"fBodyAccMagMeanFreq"</li>                
<li>"fBodyBodyAccJerkMagMean"</li>            
<li>"fBodyBodyAccJerkMagStd"</li>             
<li>"fBodyBodyAccJerkMagMeanFreq"</li>       
<li>"fBodyBodyGyroMagMean"</li>               
<li>"fBodyBodyGyroMagStd"</li>                
<li>"fBodyBodyGyroMagMeanFreq"</li>           
<li>"fBodyBodyGyroJerkMagMean"</li>          
<li>"fBodyBodyGyroJerkMagStd"</li>           
<li>"fBodyBodyGyroJerkMagMeanFreq"</li>       
<li>"angletBodyAccMean.gravity"</li>          
<li>"angletBodyAccJerkMean.gravityMean"</li>  
<li>"angletBodyGyroMean.gravityMean"</li>     
<li>"angletBodyGyroJerkMean.gravityMean"</li>
<li>"angleX.gravityMean"</li>                 
<li>"angleY.gravityMean"</li>                 
<li>"angleZ.gravityMean"</li>  
</ol>              

Final Observation
------------
With 6 type of activities and 30 subjects, the new dataset contains 180 observations