import torch
import torch.nn.functional as F

vector = torch.randn(5, dtype=torch.float32)
print("Input vector: ", vector)

# softmax along the last dimension
output = F.softmax(vector, dim=-1)
print("Output vector: ", output)
