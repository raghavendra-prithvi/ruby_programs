require 'socket' 

    server = TCPServer.open(2000)  # Socket to listen on port 2000
    loop {                         # Servers run forever
      client = server.accept       # Wait for a client to connect
      client.puts(Time.now)  # Send the time to the client
      client.puts "Connected to Server"
      client.close                 # Disconnect from the client
    }

    
    