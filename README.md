# Inception

## Description

Inception is a system administration project that I worked on to explore Docker and virtualization. I created a personal virtual machine running multiple services, each in its own Docker container. The goal was to build a small infrastructure with services like NGINX, WordPress, and MariaDB, while ensuring proper containerization, networking, and security practices.

## Features

- NGINX container using TLSv1.2 or TLSv1.3.
- WordPress container with PHP-FPM (without NGINX).
- MariaDB container (without NGINX).
- Two volumes:
    - One for the WordPress database.
    - One for the WordPress website files.
- A Docker network connecting all containers.
- Containers are configured to restart in case of a crash.

## Security Features

- NGINX is the only entry point via port 443, ensuring secure access using TLS.
- No credentials or passwords are hardcoded in Dockerfiles—environment variables are used instead.
- Environment variables and secrets stored in .env and secret files to keep sensitive information secure.

## Bonus Features

I also added the following bonuses:

- Redis Cache: To improve WordPress performance.
- FTP Server: To manage the WordPress files.
- Static Website: A simple static site using HTML/CSS/JavaScript.
- Adminer: A database management tool.

## Installation

To set up the project:

1. Clone my repository:
   ```bash
   git clone git@github.com:Rui-Pedro-Pires/Inception.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Inception
   ```
3. Use the provided `Makefile` to build and run the Docker containers:
   ```bash
   make
   ```

## Usage

Once the containers are running, the NGINX server will serve the WordPress website over HTTPS. The MariaDB database supports WordPress, and you can manage the website with two users (one administrator and one regular user).

### Example Commands

- To stop all containers:
```bash
make down
```

- To rebuild the containers:
```bash
make re
```

## Requirements

- Docker and Docker Compose.
- Basic knowledge of system administration and security practices.
