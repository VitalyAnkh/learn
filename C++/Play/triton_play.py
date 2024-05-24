import triton
import triton.language as tl
import torch


@triton.jit
def shuffle_kernel(X, Y, BLOCK_SIZE: tl.constexpr):
    pid = tl.program_id(axis=0)
    block_start = pid * BLOCK_SIZE
    idx = tl.arange(0, BLOCK_SIZE)
    x = tl.load(X + block_start + idx)
    shuffled_idx = BLOCK_SIZE - 1 - idx
    tl.store(Y + block_start + shuffled_idx, x)


BLOCK_SIZE = 128
GRID_SIZE = 8

X = torch.arange(0, GRID_SIZE * BLOCK_SIZE, dtype=torch.float32, device="cuda")
Y = torch.empty_like(X)

# 注意这里将 GRID_SIZE 包装在一个列表中
shuffle_kernel([GRID_SIZE])(X, Y, BLOCK_SIZE=BLOCK_SIZE)
print(Y)
