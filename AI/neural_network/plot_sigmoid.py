#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt


# Define the sigmoid function
def sigmoid(z):
    return 1 / (1 + np.exp(-z))


# Generate values for z
z = np.linspace(-10, 10, 500)

# Calculate the sigmoid values
sigma_z = sigmoid(z)

# Plot the function
plt.figure(figsize=(8, 5))
plt.plot(z, sigma_z, label=r"$\sigma(z) = \frac{1}{1+e^{-z}}$")
plt.title("Sigmoid Function")
plt.xlabel("z")
plt.ylabel(r"$\sigma(z)$")
plt.axhline(0.5, color="red", linestyle="--", label=r"$\sigma(z) = 0.5$")
plt.grid(alpha=0.3)
plt.legend()
plt.show()
