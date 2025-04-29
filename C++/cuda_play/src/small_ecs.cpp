#include <cstdint>
#include <bitset>
#include <fmt/format.h>
#include <unordered_map>
#include <vector>

using Entity = uint64_t;
using ComponentType = std::uint8_t;
const ComponentType MAX_CONPONENTS = 32;

using Type = std::vector<ComponentType>;
// A symple type alias
using Signature = std::bitset<MAX_CONPONENTS>;

const Entity MAX_ENTITIES = 5000;

// A simple type alias

std::unordered_map<Entity, Type> entity_index;
int main() {
  fmt::print("hello");
  return 0;
}
