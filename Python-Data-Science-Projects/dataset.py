import numpy as np
import pandas as pd

np.random.seed(40)
# One of the best practices to set a random seed for reproducibility of results.

years = np.random.uniform(0.5, 10, 100).round(2)
# uniform generates data between the given range and how many data points we want and rounds it to 2 decimal places.

salaries = (40000 + years * 6000 + np.random.normal(0, 4000, size=100) ).round(2)
# formula to generate salaries based on years of experience and round to 2 decimal places.

# With the help of pandas, we can create a DataFrame to hold this data.
# A DataFrame is a 2-dimensional labeled data structure with columns of potentially different types.
# You do not need to loop in using variables years and salaries to create a DataFrame as pandas provides a very efficient way to do this.

df = pd.DataFrame({
    'YearsExperience': years,
    'Salary': salaries
})
df.to_csv('salary_data.csv', index=False)
print("Dataset created and saved as 'salary_data.csv'")
# We create a DataFrame with two columns: 'YearsExperience' and 'Salary', using the generated data.
# Finally, we save the DataFrame to a CSV file named 'salary_data.csv' without including the index column.

