from livereload.server import Server

# Create a new application
server = Server()
server.watcher.watch('/source/urbana/home/templates')
server.watcher.watch('/source/urbana/templates')
server.serve(host='0.0.0.0', port='35729')