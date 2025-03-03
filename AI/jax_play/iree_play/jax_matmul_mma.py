import jax
import jax.numpy as jnp

# 确定矩阵大小，必须是 Tensor Core 的最优尺寸（16 的倍数）
M, N, K = 4096, 4096, 4096  # 大矩阵以触发 Tensor Core

# 生成随机矩阵（使用 float16 以启用 Tensor Core）
key = jax.random.PRNGKey(0)
A = jax.random.uniform(key, (M, K), minval=0, maxval=1, dtype=jnp.float16)
B = jax.random.uniform(key, (K, N), minval=0, maxval=1, dtype=jnp.float16)


# 矩阵乘法
@jax.jit  # JIT 编译以触发 GPU 加速
def matmul(A, B):
    return jnp.matmul(A, B)


# 运行并检查结果
C = matmul(A, B)
print("Matrix multiplication complete.")
print("Result shape:", C.shape)
