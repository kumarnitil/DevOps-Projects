import pandas as pd
import numpy as np
import random

# random module allows you to generate random integers, floating-point numbers, and select random elements from sequences like lists or strings.
toxic_comments = [
    "You're so dumb", "This is trash", "Worst video ever", "Stop making content", "You sound horrible",
    "Clickbait title", "Can't believe people like this", "Waste of time", "Cringe content", "You're such a loser"
]

supportive_comments = [
    "This helped me a lot!", "You're amazing!", "Best tutorial I've seen", "Thanks for the content!",
    "Keep up the great work", "So clear and helpful", "Awesome explanation", "I learned a lot!", "Much appreciated!", "Legend!"
]

data = []
# Here data is defined as an empty list to store comments

for i in range(50):
    data.append({"comment": random.choice(toxic_comments), "label": "toxic"})
    data.append({"comment": random.choice(
        supportive_comments), "label": "support"})

df = pd.DataFrame(data)
df.to_csv("youtube_comments_dataset.csv", index=False)
# The loop generates 50 toxic and 50 supportive comments, appending them to the data
# DataFrame and saving it as a CSV file named 'youtube_comments_dataset.csv'.
# This script creates a dataset of YouTube comments labeled as 'toxic' or 'supportive'.

print("Data saved successfully to 'youtube_comments_dataset.csv")

# Vectorization means converting text data into numerical format so that machine learning algorithms can process it.
