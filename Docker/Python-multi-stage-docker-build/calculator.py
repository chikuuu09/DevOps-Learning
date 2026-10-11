
print("Welcome to Python Calculator!")

while True:
    expression = input("\nEnter calculation (e.g. 10 + 5) or 'exit': ")

    if expression.lower() == "exit":
        print("Calculator closed.")
        break

    parts = expression.split()

    if len(parts) != 3:
        print("Invalid input! Example: 10 + 5")
        continue

    try:
        num1 = float(parts[0])
        operator = parts[1]
        num2 = float(parts[2])

        if operator == "+":
            result = num1 + num2
        elif operator == "-":
            result = num1 - num2
        elif operator == "*":
            result = num1 * num2
        elif operator == "/":
            if num2 == 0:
                print("Error: Cannot divide by zero.")
                continue
            result = num1 / num2
        else:
            print("Invalid operator!")
            continue

        print("Result:", result)

    except ValueError:
        print("Invalid numbers! Please try again.")
