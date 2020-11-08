# cardio_final_project

## Presentation
Selected Topic: 
Cardiovascular Disease

Reason of Selection: 
We found this dataset to be very interesting and relevant to the world. As Cardiovascular disease is the leading cause of mortality worldwide, it would be beneficial to have an algorithm for its early detection.

Source of Data:
This data is extracted from Kaggle.com, which is an online community of Data Scientists and Maching Learning practitioners.

QUESTIONS WE HOPE TO BE ANSWERED: 
We are hoping that after working with this database, we will be able to detect the presence or absence of cardiovascular disease early depending on variables such as patient's age, gender, physical activity and more.

## GitHub:
### Description of the communication protocols: 
In order to transmit and exchange information smoothly and error-free, each team member created their own github branch in the final project github page to upload their work seperately and merge work together as a team work. This communication protocols gives team member access to detect transmission errors and prevent data loss. 

Besides github, team member are using video conferencing tool like Zoom to set up meeting during weekend and communication tool like Slack to share thoughts and insights. Team hosted two meeting during the week. In the first meeting, team decided the big picture for this project, including the choice of topic, source of data and choice of model. In the second meeting, team came to a common agreement on each individual's role on this project and responsibility on specific part of assignment.


## Database
The initial dataset: cardio_train.csv was collected and downloaded from Kaggle.com, an open community of Machine Learning Practitioners.  

In the original dataset, a total number of 70000 records were presented with 12 columns of information. These information include their: id, gender, weight, height, ap_high, ap_low, cholesterol, gluc, smoke, aloholic, active and cardio. Among the information, 5 of them are numerical variable and 7 of them are categorical variables: gender, cholesterol, gluc, smoke, alco, active and cardio. And some of the categorical variable are binary variable, which means the outcome will be simply a Yes or No and they are represented as 1 or 0 in our dataset. These categorial variable impose a limited number of possible value of outcomes. So from statical perspective, special consideration will be take into account when we deal with categorial variable in machine learning as certain statistics measurement will not make sense for those categorial variable. (For example the mean of gender will not provide any meaningful interpretation in machine learning). Thus, proper treatment on encoding these variable will be one of the focus and challenge for this assignment. 

A huge size of dataset can ensure we have enough confidence on the information that we carry and the statics significance that we have. However it can be very time consuming when deal with a large amount of data.  In order to efficiently process the data without losing the statistics significance, we selected a reasonable size of sample data from the original dataset. We shrink the number of record to 700 as the selected data shows a uniform distribution with respect to our dataset. However we will still continue to monitor the representative of our sample data and will remain the option to change the sample data in the case that if any deficiency is discovered.


