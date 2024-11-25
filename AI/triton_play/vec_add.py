import triton
import triton.language as tl
import torch


@triton.jit
def vecadd_kernel(x_ptr, y_ptr, output_ptr, N, BLOCK_SIZE: tl.constexpr):
    # Compute the block and thread indices
    pid = tl.program_id(axis=0)
    block_start = pid * BLOCK_SIZE

    # Create pointers for this block
    offsets = block_start + tl.arange(0, BLOCK_SIZE)

    # Mask to avoid out-of-bounds accesses
    mask = offsets < N

    # Load x and y
    x = tl.load(x_ptr + offsets, mask=mask)
    y = tl.load(y_ptr + offsets, mask=mask)

    # Compute the sum
    output = x + y

    # Store the result
    tl.store(output_ptr + offsets, output, mask=mask)


# Function to compile the kernel and save it as PTX
def compile_and_save_vecadd_kernel():
    BLOCK_SIZE = 1024
    N = 10240  # example size, adjust as needed

    # Create dummy data
    x = torch.randn(N, device="cuda")
    y = torch.randn(N, device="cuda")
    output = torch.empty(N, device="cuda")

    # Compile the kernel
    grid = lambda META: (triton.cdiv(N, META["BLOCK_SIZE"]),)
    vecadd_kernel[(grid,)](
        x_ptr=x, y_ptr=y, output_ptr=output, N=N, BLOCK_SIZE=BLOCK_SIZE
    )

    # Extract the PTX code
    ptx_code = vecadd_kernel.kernel.ptx()

    # Save PTX code to a file
    with open("vecadd_kernel.ptx", "w") as f:
        f.write(ptx_code)


if __name__ == "__main__":
    compile_and_save_vecadd_kernel()
