#include <cstdint>
#include <fmt/format.h>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <vector>

using ComponentId = uint64_t;
using EntityId = uint64_t;
using ArchetypeId = uint64_t;
using EntityType = std::vector<ComponentId>;
struct Archetype {
  ArchetypeId id;
  std::unordered_set<ComponentId> type_set;
};
using ArchetypeSet = std::unordered_set<ArchetypeId>;

// global data in an ECS world
std::unordered_map<EntityId, Archetype *> entity_index;
std::map<EntityType, Archetype *> archetype_index;
std::unordered_map<ComponentId, ArchetypeSet *> component_index;

bool has_component(EntityId entity, ComponentId component) {
  Archetype *archetype = entity_index[entity];
  ArchetypeSet *archetype_set = component_index[component];
  return archetype_set->count(archetype->id) != 0;
}

int main() {
  fmt::println("hello");
  return 0;
}
