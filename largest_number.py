# === 1st. Practice [Introduccion a la computacion] === #

def input_numbers(message):
    while True:
        try:
            return float(input(message))
        except ValueError:
            print('Not valid number, check the input and try again.')

def get_response(message):
    while True:
        response = input(message).lower()
        if response == 'y':
            return True
        elif response == 'n':
            return False
        else:
            print('Invalid option.\n Use "y" or "n" and try again')
    
def main():
    if not get_response('You wanna execute the script? (y/n): '):
        print('Finished. Goodbye!')
        return

    while True:
        num1 = input_numbers('Insert first number: ') 
        num2 = input_numbers('Insert second number: ')
        num3 = input_numbers('Insert third number: ')

        result = max(num1, num2, num3)
        print(f'The largest number is: {result}')
        
        if not get_response('Do you want to continue? (y/n): '):
            print('Finished. Goodbye!')
            break

if __name__ == "__main__":
    main()