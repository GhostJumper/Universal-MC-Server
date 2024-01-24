# 🌍 Universal-MC-Server 🎮

This project is a universal Minecraft server starter. It can start any Minecraft Server.jar as long as you can provide a download link. It's perfect for those who want to quickly and easily set up their own Minecraft server.

## 🚀 Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### 🛠️ Build

To build the project, you need to clone the repository to your local machine.

```bash
git clone https://github.com/yourusername/Universal-MC-Server.git
cd Universal-MC-Server
```

### 🏁 Run

To run the server, you need to use Docker. Replace <port> with the port you want to use for your server, <path> with the path where you want to store your server files, and FILE_URL with the download link of your Server.jar file

```
docker run  -d \
            -p <PORT>:25565 \
            -v <PATH>:/mc \
            -e FILE_URL="<JAR_URL>" \
            -e XMX="4G" \
            unrea1/universal-mc-server:1
```

For example, if you want to run the server on port 25565, store the server files in /home/minecraft, and use the PaperMC 1.20.1 Server.jar, you would run:

```
docker run  -d \
            -p 25565:25565 \
            -v /home/minecraft:/mc \
            -e FILE_URL="https://api.papermc.io/v2/projects/paper/versions/1.20.1/builds/43/downloads/paper-1.20.1-43.jar" \
            -e XMX="4G" \
            unrea1/universal-mc-server:1
```

Now, your Minecraft server is up and running! 🎉