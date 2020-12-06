# cardio_final_project


## Presentation

### Selected Topic: 
Cardiovascular Disease

### Reason of Selection: 
We found this dataset to be very interesting and relevant to the world. As Cardiovascular disease is the leading cause of mortality worldwide, it would be beneficial to have an algorithm for its early detection.

### Source of Data:
This data is extracted from Kaggle.com, which is an online community of Data Scientists and Maching Learning practitioners.

### Questions we hoped to be answered:
We are hoping that after working with this database, we will be able to detect the presence or absence of cardiovascular disease early depending on variables such as patient's age, gender, physical activity and more.

### GitHub

## Google Slides (Latest Update: Dec 6th,2020)
https://docs.google.com/presentation/d/1iHwvu2vJT-PtQ6kPTJgLNRYzykJy-1L-Y0aAk3UAxJg/edit?usp=sharing

## Database

The initial dataset: cardio_train.csv was extracted from Kaggle.com, an open community of Machine Learning Practitioners.  

In the original dataset, a total number of 70000 records were presented with 12 columns of information. These information include their: id, gender, weight, height, ap_high, ap_low, cholesterol, gluc, smoke, aloholic, active and cardio. Among the information, 5 of them are numerical variable and 7 of them are categorical variables: gender, cholesterol, gluc, smoke, alco, active and cardio. And some of the categorical variable are binary variable, which means the outcome will be simply a Yes or No and they are represented as 1 or 0 in our dataset. These categorial variable impose a limited number of possible value of outcomes. So from the statistics perspective, special consideration will be take into account when we deal with categorial variable in machine learning as certain statistics measurement will not make sense for those categorial variable. (For example the mean of gender will not provide any meaningful interpretation in machine learning). Thus, proper treatment on encoding these variable will be one of the focus and challenge for this assignment. 


A huge size of dataset can ensure we have enough confidence on the information that we carry and the statics significance that we have. However it can be very time consuming when deal with a large amount of data.  In order to efficiently process the data without losing the statistics significance, we selected a reasonable size of sample data from the original dataset. We shrink the number of record to 700 as the selected data shows a uniform distribution with respect to our dataset. However we will still continue to monitor our sample data and will keep the option to adjust the sample data if any deficiency is discovered.

## Machine Learning Model

In order to create a machine learning model capable of predicting cardio vascular disease, we will be trying out different supervised machine learning models in order to find the one that has the most accuracy and precision with our dataset. We have chosen the models that classifies data (ie. cardiovascular disease vs. no cardiovascular disease)

The following are the machine learning models that we intend to try out during the duration of the project: 

1. Logistic regression. This is the initial model that we have tried out in this first segment of the project, in the file Segment1.ipynb. it has resulted in an accuracy of 71.43%, which we are hoping can be improved in the weeks coming by trying other models. 

2. Decision trees

3. Random forests.  

4. Suppport Vector Machine (SVM). 

5. Neural Networks. 

Because we have only tested one of the four models above so far, we cannot yet decide their strengths and weaknesses as well as the final model to use for our dataset. This decision will be made in the weeks to come as more models and tried out. 

### Description of data preprocessing
There were several steps involved in the preprocessing of the data in order to clean it and get more accurate results from the models. The steps are outlined below.
1. The person ID column was made the index in order to avoid duplicate data and to set the unique indexes for each record.
2. The number and types of columns were listed in order to verify their compliance with the model's requirement. Fortunately for us, all variables were integer or float, making it easier for us to reach the processing stage. 
3. The dataset was tested for null values in order to remove those columns as they would be incomplete and corrupt the final accuracy. Fortunately for us, there were no null values in our dataset.
4. The age group column was removed from the set as it does not bring any new information and duplicating existing information could cause problems for our model.
5. The column age was dropped as it showed the age of each individual in number of days format. We kept the standard format which is years.

### Description of feature engineering and the feature selection, including the decision-making process
We defined X as our independent variables or feature dataset. We copied our dataframe and then removed the independent variable "existence of cariovascular disease" from this dataset. We then named this dataset X. This ensured that our original dataframe was kept separate incase we needed to go back to it. 
We defined Y as our target variable or target vector i.e. what we wish to predict. In our case, this was "cardio" which showed whether a person had cardiovascualr disease or not. In order to create Y, we simply put it equal to the column "cardio" of our dataframe. 

### Description of how data was split into training and testing sets
In order to make sure that some data was left on the side and used to evalute the model, we divide the dataset into training sets and testing sets. The training set is used to run the model or learn from it. The testing set is then used to evalue the model's performance once it has been run. This is basicually to ensure that when evaluating the performance of our model, it uses unseen data that was previously not used in the training set. We divided both X and Y into training and testing sets in order to end up with 4 sets: X training set, X testing set, Y training set, Y testing set. Next, we used a random state integer to produce the same results accross different calls and gurantee the reproducibility of the dataset. 

### Explanation of model choice, including limitations and benefits
We used five different models, based on their benefits and their ability to accurately predict the disease in question. We ran all five because we wanted to compare the results with each other in order to find the optimal model that will most effectively predict the presence or absense of cardiovascular disease among patients.  The limitations and benefits of the five models are mentioned below.

1. Logistic Regression (segment2.ipynb) 
This model is used to find the probability of a case occuring or not. In our case, existence or absense of cardiovascular disease. It is a classification model. This model is very simple and fast to implement. Training the dataset is also done very effectively. However, the model assumes a linear relationship between dependent and independent variables which in our case might not be exhaustively true. It also only works on simple models and so as if the relationship between variables becomes a bit complex, this model will not give accurate results. 

2. Decision Trees (Segment2 - Decision tress.ipynb)
Decision tree models can be used to solve both regression and classification problems. Decision Tree transforms the data into a tree-like representation, where each internal node represents an attribute and each leaf/terminal node represents a class label and do not split further. This alogrithm is very effective as the process seems intuitive and natural. There is less effort in the preprocessing stage and there is not scaling required. However, they can easily become very complicated to maneouver through depending on the number and depth of the nodes. Therefore, the deeper the tree, the more risk of overfitting the data. Also, the training of the set can take a long time and thus can be expensive. 

3. Random Forest classifier
Random forest classifier takes in the predictions of multiple alogrithms, decision tree models, and accumulates them to deliver a final prediction. The individual decision tree models are simpler as they only have a random subset of variables. Each individual tree is not effective but combining several average trees gives us a more accurate and robust prediction. The random forest classifier can handle alot of data with several variables and can be used to rank the variables in matter of importance. They are also robust and there is less risk of overfitting. However, if the number of decision tress become too high, it will become very slow to train the model.

4. SVM (Support Vector Machines) 
SVM model is a two-group classification model like the logistic regression. The main purpose of the support vector machine algorithm is to find a boundary in an dimensional space depending on the number of features, that distinctly classifies the data points. This model works well when there is a clear margin of separation between the classes in question. However, those margins can sometimes be less obvious, creating opportunity for outliers. It is also not fit for large datasets, in which case the model might not predict the results accurately. The SVM algorithm nonetheless is very efficient and fast. SVMs are also at low risk of overfitting as they aim to maximize the distance between the classes.

5. Deep Learning Neural Network 
Neural network model can be used as a classification algorithm used to predict whether each record belongs in one category or another (each patient record has cardiovascular disease or not). Neural networks are the most advanced form of machine learning in our program where a neural network contains layers of neurons performing individual analysis. The analysis is compared against each other until they reach the last layer which returns a categorical result in our case (patient has cardiovascular disease or not). These models can analyze complex non linear relationships between variables and can also work with complicated messy data as well. However, these models are often at risk of overfitting.

### We ran all 5 models in order to better compare the accuracy scores between the models. The accuracy score differs between the five models which is expected as each one has its own limitations and training capabilities. The accuracy score of the 5 models are outlined below.

1. Logistic Regression: 69.25%
2. Decision Trees: 63.82%
3. Random Forest Classifier: 71.13%
4. SVM: 72.22%
5. Deep Learning Neural network: 73.17%

### What do the numbers actually mean?
An accuracy score of 73.17% for the deep learning network means the model was able to correctly predict the disease status of 72.17% of the patients. While anything less than a 100% would be not ideal, as human life is at stake, a score above 70% is generally considered acceptable. We believe adding more variables about a person's health such as prior diseases, family history or eating habits of the individuals could give us a higher accuracy score. 

The Deep learning Neural network model, as expected, gave the highest accuracy score for our dataset, followed by SVM model. While the difference in the score of the two models isn't very large, it took a siginificantly longer time to train the data in the SVM model compared to the neural network. Therefore, considering all the benefits of neural network, the main one being the ability to cancel the noise out of the dataset and handle complex relationship between variables, we believe this model is the winner for us in terms of predicting cardiovascular disease among the patients. 


