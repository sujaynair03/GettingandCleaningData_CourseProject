# This Codebook describes the variables and layout of the data produced by the run_analysis.R file.

## Layout

The final tidy version of the data consists of 180 rows and 68 columns. Each row signifies an observation while each column signifies a variable. 

## Variables:
 [1]"LabelofActivity"                                                   
 [2] "subject"                                                           
 [3] "TimeDomainBodyAccelerometerMeanX"                                  
 [4] "TimeDomainBodyAccelerometerMeanY"                                  
 [5] "TimeDomainBodyAccelerometerMeanZ"                                  
 [6] "TimeDomainGravityAccelerometerMeanX"                               
 [7] "TimeDomainGravityAccelerometerMeanY"                               
 [8] "TimeDomainGravityAccelerometerMeanZ"                               
 [9] "TimeDomainBodyAccelerometerJerkMeanX"                              
[10] "TimeDomainBodyAccelerometerJerkMeanY"                              
[11] "TimeDomainBodyAccelerometerJerkMeanZ"                              
[12] "TimeDomainBodyGyroscopeMeanX"                                      
[13] "TimeDomainBodyGyroscopeMeanY"                                      
[14] "TimeDomainBodyGyroscopeMeanZ"                                      
[15] "TimeDomainBodyGyroscopeJerkMeanX"                                  
[16] "TimeDomainBodyGyroscopeJerkMeanY"                                  
[17] "TimeDomainBodyGyroscopeJerkMeanZ"                                  
[18] "TimeDomainBodyAccelerometerMagnitudeMean"                          
[19] "TimeDomainGravityAccelerometerMagnitudeMean"                       
[20] "TimeDomainBodyAccelerometerJerkMagnitudeMean"                      
[21] "TimeDomainBodyGyroscopeMagnitudeMean"                              
[22] "TimeDomainBodyGyroscopeJerkMagnitudeMean"                          
[23] "FrequencyDomainBodyAccelerometerMeanX"                             
[24] "FrequencyDomainBodyAccelerometerMeanY"                             
[25] "FrequencyDomainBodyAccelerometerMeanZ"                             
[26] "FrequencyDomainBodyAccelerometerJerkMeanX"                         
[27] "FrequencyDomainBodyAccelerometerJerkMeanY"                         
[28] "FrequencyDomainBodyAccelerometerJerkMeanZ"                         
[29] "FrequencyDomainBodyGyroscopeMeanX"                                 
[30] "FrequencyDomainBodyGyroscopeMeanY"                                 
[31] "FrequencyDomainBodyGyroscopeMeanZ"                                 
[32] "FrequencyDomainBodyAccelerometerMagnitudeMean"                     
[33] "FrequencyDomainBodyBodyAccelerometerJerkMagnitudeMean"             
[34] "FrequencyDomainBodyBodyGyroscopeMagnitudeMean"                     
[35] "FrequencyDomainBodyBodyGyroscopeJerkMagnitudeMean"                 
[36] "TimeDomainBodyAccelerometerStandardDeviationX"                     
[37] "TimeDomainBodyAccelerometerStandardDeviationY"                     
[38] "TimeDomainBodyAccelerometerStandardDeviationZ"                     
[39] "TimeDomainGravityAccelerometerStandardDeviationX"                  
[40] "TimeDomainGravityAccelerometerStandardDeviationY"                  
[41] "TimeDomainGravityAccelerometerStandardDeviationZ"                  
[42] "TimeDomainBodyAccelerometerJerkStandardDeviationX"                 
[43] "TimeDomainBodyAccelerometerJerkStandardDeviationY"                 
[44] "TimeDomainBodyAccelerometerJerkStandardDeviationZ"                 
[45] "TimeDomainBodyGyroscopeStandardDeviationX"                         
[46] "TimeDomainBodyGyroscopeStandardDeviationY"                         
[47] "TimeDomainBodyGyroscopeStandardDeviationZ"                         
[48] "TimeDomainBodyGyroscopeJerkStandardDeviationX"                     
[49] "TimeDomainBodyGyroscopeJerkStandardDeviationY"                     
[50] "TimeDomainBodyGyroscopeJerkStandardDeviationZ"                     
[51] "TimeDomainBodyAccelerometerMagnitudeStandardDeviation"             
[52] "TimeDomainGravityAccelerometerMagnitudeStandardDeviation"          
[53] "TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation"         
[54] "TimeDomainBodyGyroscopeMagnitudeStandardDeviation"                 
[55] "TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"             
[56] "FrequencyDomainBodyAccelerometerStandardDeviationX"                
[57] "FrequencyDomainBodyAccelerometerStandardDeviationY"                
[58] "FrequencyDomainBodyAccelerometerStandardDeviationZ"                
[59] "FrequencyDomainBodyAccelerometerJerkStandardDeviationX"            
[60] "FrequencyDomainBodyAccelerometerJerkStandardDeviationY"            
[61] "FrequencyDomainBodyAccelerometerJerkStandardDeviationZ"            
[62] "FrequencyDomainBodyGyroscopeStandardDeviationX"                    
[63] "FrequencyDomainBodyGyroscopeStandardDeviationY"                    
[64] "FrequencyDomainBodyGyroscopeStandardDeviationZ"                    
[65] "FrequencyDomainBodyAccelerometerMagnitudeStandardDeviation"        
[66] "FrequencyDomainBodyBodyAccelerometerJerkMagnitudeStandardDeviation"       
[67] "FrequencyDomainBodyBodyGyroscopeMagnitudeStandardDeviation"        
[68] "FrequencyDomainBodyBodyGyroscopeJerkMagnitudeStandardDeviation"

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean"(info from features_info.txt)
