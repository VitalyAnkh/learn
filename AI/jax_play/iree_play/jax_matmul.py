import jax
import jax.numpy as jnp

# 创建两个矩阵
matrix1 = jnp.array([[1, 2], [3, 4]])
matrix2 = jnp.array([[5, 6], [7, 8]])

# 使用 matmul 进行矩阵乘法
result = jnp.matmul(matrix1, matrix2)
# 或者使用更简短的 @ 运算符
# result = matrix1 @ matrix2

print("矩阵 1:")
print(matrix1)
print("\n矩阵 2:")
print(matrix2)
print("\n结果:")
print(result)
