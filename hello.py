from flask import request

def main():
    name = "World"
    if request.data:
        name = request.get_json().get("name")
    return "Hello, " + name + " from Python!\n"
