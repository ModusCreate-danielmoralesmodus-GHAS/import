import os

def delete_file(filename):
    os.system("rm " + filename)

# Example usage
user_input = input("Enter the filename to delete: ")
delete_file(user_input)
