import pandas as pd
import matplotlib.pyplot as plt
# matplotlib is a plotting library for the Python programming language and its numerical mathematics extension NumPy.
# sudo apt install python3-sklearn

from sklearn.linear_model import LinearRegression
# sklearn is a free software machine learning library for the Python programming language.
# It features various classification, regression and clustering algorithms including support vector machines, random forests, gradient boosting, k-means and DB SCAN.
# LinearRegression is a class in sklearn that provides methods to perform linear regression.

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

data["Predicted_Salary"] = model.predict(X)
# We use the predict method of the trained model to make predictions on the independent variable(s) (X).
# For the years of experience provided in X, the model predicts the corresponding salaries.
# The predicted values are then added to the original DataFrame as a new column called 'Predicted_Salary'.

plt.scatter( X, Y, color='blue', label='Actual Salary')
# We use the scatter function from matplotlib to create a scatter plot of the actual data points.
# The actual salaries are represented as blue dots.
plt.plot( X, data['Predicted_Salary'], color='red', label='Predicted Salary')
# The predicted salaries are represented as a red line.
# The plot function connects the predicted salary points to form a line.
# We add labels and a title to the plot for better understanding.

plt.xlabel('YearsExperience')
# We set the label for the x-axis as 'YearsExperience'.
plt.ylabel('Salary')
# We set the label for the y-axis as 'Salary'.
plt.title('Years of Experience vs Salary')
# We set the title of the plot as 'Years of Experience vs Salary'.
plt.legend()
# We add a legend to the plot to differentiate between actual and predicted salaries.
plt.grid(True)
# We add a grid to the plot for better readability.
plt.show()
# Finally, we display the plot using plt.show().
# We use the plot function from matplotlib to create a line plot of the predicted salaries.