import bcrypt

def hash_password(plain_text_password):
    # Generate salt and hash the password
    salt = bcrypt.gensalt()
    hashed = bcrypt.hashpw(plain_text_password.encode('utf-8'), salt)
    return hashed.decode('utf-8')

if __name__ == "__main__":
    password = input("Enter password to hash: ")
    hashed_password = hash_password(password)
    print(f"\nHashed Password:\n{hashed_password}")