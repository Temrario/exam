import requests

def main():
    response = requests.get("https://httpbin.org/get")
    print("Response status:", response.status_code)
    print("Response body:", response.json())

if __name__ == "__main__":
    main()