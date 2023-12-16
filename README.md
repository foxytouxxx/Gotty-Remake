# Gotty-Remake

Welcome to Gotty-Remake, a project by Foxytouxxx that takes the classic Gotty tool to the next level! 🚀

## How it Works

Gotty-Remake transforms your command-line tools into interactive web applications. Here's a quick breakdown of how it works:

1. **Docker Setup:**
   - Pulls the Ubuntu 20.04 base image.
   - Installs necessary dependencies and tools, including curl.
   - Downloads and extracts the Gotty binary from the specified release using the provided tag version.

2. **Script Execution:**
   - Copies the `run_gotty.sh` script into the Docker image.
   - Grants executable permissions to the script.

3. **Expose Port:**
   - Exposes port 8080 to make the web interface accessible.

4. **Command Execution:**
   - Sets the default command to run the `/run_gotty.sh` script when the container starts.

## Getting Started

To get started with Gotty-Remake, follow these simple steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Foxytouxxx/Gotty-Remake.git
   ```

2. **Build the Docker Image:**
   ```bash
   cd Gotty-Remake
   docker build -t gotty-remake .
   ```

3. **Run the Container:**
   ```bash
   docker run -p 8080:8080 gotty-remake
   ```

4. **Access the Web Interface:**
   Open your browser and go to [http://localhost:8080](http://localhost:8080) to interact with your command-line tools in a fun and interactive way!

## Contribute and Have Fun! 🎉

We welcome contributions, bug reports, and suggestions to make Gotty-Remake even more awesome. Join the fun, and let's turn command-line tools into a web party!

- Fork the repository.
- Make your changes.
- Submit a pull request.
- Share your ideas in the [Issues](https://github.com/Foxytouxxx/Gotty-Remake/issues) section.

Let's code, have fun, and make the command line cool again! 🤖🎉
