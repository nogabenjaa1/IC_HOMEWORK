def calculate_score(red, blue, yellow):
    return (red ** 3) + (2 * blue) - (yellow ** 2)

while True:
    print("\n--- Score Calculation ---")
    print("--- Input tokens below. --- ")
    
    try:
        red = float(input("Red tokens: "))
        blue = float(input("Blue tokens: "))
        yellow = float(input("Yellow tokens: "))
        
        score = calculate_score(red, blue, yellow)
        print(f"\nScore: {score}")
    except ValueError:
        print("Invalid number, please enter a valid number.")
        continue
    
    continue_program = input("\nDo you want to calculate another score? (y/n): ").lower()
    if continue_program != 'y':
        print("Thank you for using the program. Goodbye!")
        break
