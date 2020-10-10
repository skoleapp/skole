import urllib.parse


def lambda_handler(event, context):
    print(event)

    host = event.get("headers", {}).get("host", "www.skoleapp.com")
    host = "www.skoleapp.com" if host in {"skole.fi", "www.skole.fi"} else host

    path = event.get("path", "/")

    params = event.get("queryStringParameters")
    params = f"?{urllib.parse.urlencode(params)}" if params else ""

    return {
        "body": b"",
        "statusCode": 301,
        "headers": {"Location": f"https://{host}{path}{params}"},
    }
