def calculate_discriminant(a, b, c):
    d = b**2 - 4*a*c
    return d
def print_roots(a, b, c):
    d = calculate_discriminant(a, b, c)
    if d > 0:
        x1 = (-b + d**0.5) / (2*a)
        x2 = (-b - d**0.5) / (2*a)
        print("Root 1:", x1)
        print("Root 2:", x2)
    elif d == 0:
        x = -b / (2*a)
        print("Root:", x)
    else:
        print("No real roots")

