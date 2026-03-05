import pandas as pd
import numpy as np

df=pd.read_csv("insight_x/week2/students_2.csv")

branch_performance=df.groupby("Branch")["Math"].mean()
print("\naverage math score by branch")
print(branch_performance)