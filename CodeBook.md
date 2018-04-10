Code book

Courera
Getting and Cleaning Data
Week 4 - Project

The associated script summarizes the datasets available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Project information is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R performs the following tasks.
1. Required data sets are loaded from the UCI_HAR_dataset directory
2. Training and test data sets are combined
3. Standard devation (std) and mean measuraments are extracted for each measurement
4. Descriptive activity names are applied based on the activity_labels.txt file
5. Data set is appropriately labelled
6. The average of each variable for each activity and each subject is determined
7. Data set is exported to a text file in the current working directory for submission


Variablles

The following are the variables included. Each of these is averaged for each activity and each subject

3. timeBodyAccMeanX
4. timeBodyAccMeanY
5. timeBodyAccMeanZ
6. timeBodyAccStDevX
7. timeBodyAccStDevY
8. timeBodyAccStDevZ
9. timeGravityAccMeanX
10. timeGravityAccMeanY
11. timeGravityAccMeanZ
12. timeGravityAccStDevX
13. timeGravityAccStDevY
14. timeGravityAccStDevZ
15. timeBodyAccJerkMeanX
16. timeBodyAccJerkMeanY
17. timeBodyAccJerkMeanZ
18. timeBodyAccJerkStDevX
19. timeBodyAccJerkStDevY
20. timeBodyAccJerkStDevZ
21. timeBodyGyroMeanX
22. timeBodyGyroMeanY
23. timeBodyGyroMeanZ
24. timeBodyGyroStDevX
25. timeBodyGyroStDevY
26. timeBodyGyroStDevZ
27. timeBodyGyroJerkMeanX
28. timeBodyGyroJerkMeanY
29. timeBodyGyroJerkMeanZ
30. timeBodyGyroJerkStDevX
31. timeBodyGyroJerkStDevY
32. timeBodyGyroJerkStDevZ
33. timeBodyAccMagMean
34. timeBodyAccMagStDev
35. timeGravityAccMagMean
36. timeGravityAccMagStDev
37. timeBodyAccJerkMagMean
38. timeBodyAccJerkMagStDev
39. timeBodyGyroMagMean
40. timeBodyGyroMagStDev
41. timeBodyGyroJerkMagMean
42. timeBodyGyroJerkMagStDev
43. frequencyBodyAccMeanX
44. frequencyBodyAccMeanY
45. frequencyBodyAccMeanZ
46. frequencyBodyAccStDevX
47. frequencyBodyAccStDevY
48. frequencyBodyAccStDevZ
49. frequencyBodyAccMeanFreqX
50. frequencyBodyAccMeanFreqY
51. frequencyBodyAccMeanFreqZ
52. frequencyBodyAccJerkMeanX
53. frequencyBodyAccJerkMeanY
54. frequencyBodyAccJerkMeanZ
55. frequencyBodyAccJerkStDevX
56. frequencyBodyAccJerkStDevY
57. frequencyBodyAccJerkStDevZ
58. frequencyBodyAccJerkMeanFreqX
59. frequencyBodyAccJerkMeanFreqY
60. frequencyBodyAccJerkMeanFreqZ
61. frequencyBodyGyroMeanX
62. frequencyBodyGyroMeanY
63. frequencyBodyGyroMeanZ
64. frequencyBodyGyroStDevX
65. frequencyBodyGyroStDevY
66. frequencyBodyGyroStDevZ
67. frequencyBodyGyroMeanFreqX
68. frequencyBodyGyroMeanFreqY
69. frequencyBodyGyroMeanFreqZ
70. frequencyBodyAccMagMean
71. frequencyBodyAccMagStDev
72. frequencyBodyAccMagMeanFreq
73. frequencyBodyBodyAccJerkMagMean
74. frequencyBodyBodyAccJerkMagStDev
75. frequencyBodyBodyAccJerkMagMeanFreq
76. frequencyBodyBodyGyroMagMean
77. frequencyBodyBodyGyroMagStDev
78. frequencyBodyBodyGyroMagMeanFreq
79. frequencyBodyBodyGyroJerkMagMean
80. frequencyBodyBodyGyroJerkMagStDev
81. frequencyBodyBodyGyroJerkMagMeanFreq


Data

The folowing six activities were used for averaging

1. WALKING          
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

The subject column contains integers from 1 to 30

