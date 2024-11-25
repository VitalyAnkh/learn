import jax
import jax.numpy as jnp


# Define the vector addition function using JAX
def vecadd(x, y):
    return x + y


# Create sample vectors
x = jnp.array([1.0, 2.0, 3.0])
y = jnp.array([4.0, 5.0, 6.0])

# Perform vector addition
result = vecadd(x, y)
print("Vector Addition Result:", result)


# JAX tracing to get the StableHLO module
@jax.jit
def vecadd_jit(x, y):
    return vecadd(x, y)


# Trace the function to get the StableHLO
hlo = jax.xla_computation(vecadd_jit)(x, y)

# Print the StableHLO module
print("========================")
print(hlo.as_hlo_text())
