import streamlit as st
# Problem found was missing streamlit executable path to environment variable PATH
# Adding it back solved the issue.
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

# pip install scikit-learn for sklearn in windows
# sudo apt install python3-sklearn for sklearn in linux

# Step 1: Load the dataset
# pd can read from various file formats like CSV, Excel, SQL databases, and more.
data = pd.read_csv('salary_data.csv')
# Here, we are reading a CSV file named 'salary_data.csv' into a DataFrame called 'data'.

X = data[['YearsExperience']]
Y = data[['Salary']]
# We are separating the independent variable (YearsExperience) and the dependent variable (Salary) into X and Y respectively.

# Step 2: Create and train the model
model = LinearRegression()
# We create an instance of the LinearRegression class.
# This model will be used to perform linear regression on our dataset.
# This model will have access to various methods and attributes provided by the LinearRegression class.

model.fit(X, Y)
# The fit method is used to train the model on the provided data.
# It takes the independent variable(s) (X) and the dependent variable (Y) as inputs and finds the best-fitting line that minimizes the error between the predicted and actual values.
# Thus model.fit will create the graph based on the data provided.

# Adding Salary Predictor title
st.title("Salary Predictor based on Years of Experience")
