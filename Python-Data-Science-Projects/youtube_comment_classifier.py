# Logistic Regression Implementation for Binary Classification
# It works on a sigmoid function to predict probabilities
# It predicts the probabilities of zero or one.

import pandas as pd
from sklearn.pipeline import Pipeline
from sklearn.linear_model import LogisticRegression
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.model_selection import train_test_split
import streamlit as st


# The Pipeline class from sklearn is used to chain multiple data processing steps and a final estimator into one sequential workflow.
# Step 1: import the Pipeline class from sklearn.pipeline. We completed this above.
# Step 2: Define a list of steps, where each step is a tuple: ('name', transformer_or_estimator)
# Step 3: Create a Pipeline object with these steps
# Step 4: Fit the Pipeline on training data and use it to make predictions
# Step 5: Predict with the pipeline on new data.

# train_test_split is used to split the dataset into training an d testing sets.
# You need to assume that you have two datasets - X (features) and y (labels).
# In simple terms, if the the machine learning is being trained to predict housing prices, then X(Features) can be the columns like House price and Y can be the actual price.
# X_train and y_train are used to train your model.
# X_test and y_test are used to evaluate model performance.

# df = pd.read_csv('youtube_comments_dataset.csv')
# df is the new data frame variable that holds the dataset read from a CSV file named 'youtube_comments-dataset.csv'.


# Here, the dataset is split into training and testing sets. 20% of the data is used for testing.
# test_size=0.2 indicates that 20% of the data will be used for testing.
# random_state=42 ensures that the split is reproducible.


def load_model():
    df = pd.read_csv('youtube_comments_dataset.csv')
    X_train, X_test, y_train, y_test = train_test_split(
        df["comment"], df["label"], test_size=0.2, random_state=42)
    model = Pipeline([
        ('tfidf', TfidfVectorizer()),  # Step 1: Convert text]
        ('logreg', LogisticRegression())  # Step 2: Logistic Regression model
    ])
    model.fit(X_train, y_train)
    return model

# Thus we created model pipeline with two steps to convert text data into numerical format using TfidfVectorizer and then apply Logistic Regression.


# The model is trained using the training data.

model = load_model()
# Finally, the trained model is used to make predictions on the test data.
# The predicted labels are stored in the variable 'acc'.

st.title("YouTube Comment Classifier")
st.write("Enter a YouTube comment to classify it as Positive or Negative.")
user_input = st.text_area("Enter a YouTube Comment:")

if user_input:
    prediction = model.predict([user_input])[0]
    if prediction == "toxic":
        st.write("The comment is **Toxic** 😞 ")
    else:
        st.write("The comment is **Supportive**😊 ")
