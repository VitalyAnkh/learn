import jax.numpy as jnp
from jax import jit


def selu(x, alpha=1.67, lmbda=1.05):
    return lmbda * jnp.where(x > 0, x, alpha * jnp.exp(x) - alpha)


selu_jit = jit(selu)

x = jnp.arange(5.0)
print(selu(x))

_ = selu_jit(x)  # compiles on first call
