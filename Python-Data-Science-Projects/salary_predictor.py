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
st.write("Enter your years of experience to predict your salary.")

years_input = st.number_input(
    "Years of Experience", min_value=0.0, max_value=50.0, step=0.1)

# years_input will take the user input for years of experience.
# It uses Streamlit's number_input widget to create a numeric input field.
# Based on the numeric input provided by the user, it will predict the salary using the trained model.


if years_input:
    print("User Input Years of Experience:", years_input)
    predicted_salary = model.predict([[years_input]])[0]
    st.success(f"Estimated Salary: {predicted_salary}")

# predicted_salary will store the predicted salary based on the user input which is stored in years_input.
# The model's predict method is used to make predictions based on the input data.
# years_input is wrapped in a list to match the expected input format for the predict method.
# The predicted salary is then displayed using Streamlit's success method.
# The years_input[0] is used to extract the predicted salary value from the returned array.
# predicted_salary is an array containing the predicted salary value.

st.subheader("Salary Prediction Visualization")
# subheader is for the visualization section of the app.

fig, ax = plt.subplots()
# fig and ax are created using plt.subplots() to create a figure and axis for the plot.

ax.scatter(X, Y, color='blue', label='Actual Salary')
ax.plot(X, model.predict(X), color='red', label='Predicted Salary')
ax.set_xlabel('YearsExperience')
ax.set_ylabel('Salary')
ax.set_title('Years of Experience vs Salary')
ax.legend()

st.pyplot(fig)
# Finally, we display the plot using st.pyplot().
# We use the plot function from matplotlib to create a line plot of the predicted salaries.
# The plot is then rendered in the Streamlit app using st.pyplot().
