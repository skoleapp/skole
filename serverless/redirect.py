def lambda_handler(event, context):
    print(event)
    host = event.get("headers", {}).get("host", "www.skoleapp.com")
    path = event.get("path", "/")
    return {
        "body": "",
        "statusCode": 301,
        "headers": {
            "Location": f"https://{'www.skoleapp.com' if host in {'skole.fi', 'www.skole.fi'} else host}{path}"
        },
    }
