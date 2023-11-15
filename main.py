from decouple import config

print(f"Current build is '{config("BUILD")}'")
