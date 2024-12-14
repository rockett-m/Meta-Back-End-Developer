# python3.10+ feature (match switch cases)
# python3 match_switch_case.py

http_status = int(input("Enter http status code: "))
print(f"{http_status = }")

match http_status:
    case 200:
        print("OK")
    case 400:
        print("Bad request")
    case 404:
        print("Not found")
    case 500 | 501:
        print("Server error")
    case _:
        print("Unknown")

num_list = [33,42,5,66,77,22,16,79,36,62,78,43,88,39,53,67,89,11]
count = 0
for idx, val in enumerate(num_list):
    if val == 36:
        print(f"Number found at position: {idx}")
    if val > 45:
        print("Over 45")
    else:
        print("Under 45")
    count += 1
print(f"{count = }")
