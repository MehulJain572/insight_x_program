import pandas as pd
df=pd.read_csv("insight_x/week2/students.csv")

#displaying top 5 rows:
print(df.head())
print("\n ")
#summary statistics:
print(df.describe())