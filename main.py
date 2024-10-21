import wsgiref.simple_server

def application(environ, start_response):
    response = b"Hello Chiemerie!"
    status = "200 OK"
    headers = [("Content-type", "text/html")]
    start_response(status, headers)

    return[response]

if __name__ == "__main__":
    w_s = wsgiref.simple_server.make_server(
        host="localhost",
        port=8022,
        app=application
    )
    w_s.handle_request()