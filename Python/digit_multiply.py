def main():
    n = int(input())
    digits = []
    while n != 0:
        digits.append(n % 10)
        n = n // 10
    product = 1
    for i in digits:
        product = product * i

    print(product)


if __name__ == "__main__":
    main()
