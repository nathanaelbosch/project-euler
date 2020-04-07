import numpy as np

print(np.unique(np.concatenate((np.arange(3, 1000, 3), np.arange(5, 1000, 5)))).sum())
