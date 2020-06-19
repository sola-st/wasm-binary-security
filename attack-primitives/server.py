#!/usr/bin/env python

# Serve wasm with the correct MIME type

import SimpleHTTPServer
import SocketServer

PORT = 8000

Handler = SimpleHTTPServer.SimpleHTTPRequestHandler

Handler.extensions_map['.wasm'] = 'application/wasm'
httpd = SocketServer.TCPServer(("", PORT), Handler)
httpd.serve_forever()
