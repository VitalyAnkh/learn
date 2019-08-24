# python3


def linear_search(keys, query):
    for i in range(len(keys)):
        if keys[i] == query:
            return i

    return -1


def binary_search(keys, query):
    assert all(keys[i] < keys[i + 1] for i in range(len(keys) - 1))
    assert 1 <= len(keys) <= 10 ** 4

    type here


if __name__ == '__main__':
    input_n = int(input())
    input_keys = list(map(int, input().split()))
    assert len(input_keys) == input_n
    input_m = int(input())
    input_queries = list(map(int, input().split()))
    assert len(input_queries) == input_m

    for q in input_queries:
        print(binary_search(input_keys, q), end=' ')
