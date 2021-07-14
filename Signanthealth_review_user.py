import requests
import json
import jsonpath

def test_users_register():
    url = "http://192.168.0.16:8080/api/users"
    Headers = {'Content-Type': 'application/json',"token": "MzMyNjQyMzAzODMwNjk1Mzg1MDU4OTA3MTEyMDM3MTQ2NDg5Mzg2"
               }
    payload = {
        "username":"EmmaAngel",
        "password":"Admin123",
    }
    response = requests.get(url=url, data=payload)

    print(response)
    assert response.status_code == 200