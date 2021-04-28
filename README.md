# timecard-launcher

This is a stack timecard. It's RAW. That means that it does not use any frameworks.

## Setup

### Pre-requisites:

* Docker
* docker-compose

#### About Docker

Install Docker for your platform.

* Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
* Windows: https://store.docker.com/editions/community/docker-ce-desktop-windows
* Linux: Please see your distributions package management system

#### About docker-compose

Install docker-compose for your platform.

* Mac: Included with Docker
* Windows: Included with Docker
* Linux: Please see your distributions package management system

### Installation

First we need to clone the project.

```bash
cd ~/code # or whatever directory you keep your projects in

git clone git@github.com:lucas0000miranda/stack-docker-apache.git
cd stack-docker-apache
```

Next we up the project:

```bash
docker-compose up
```

Then we copy the IpAddress from MySql container, for that type:

```bash
docker ps
docker inspect container_id | grep -i IPAddress
```

Set the ip address in the config on ```database/config.php```

```bash
const HOST = ipAddress from mysql;
const USER = 'user';
const PASSWORD = '';
const DB = 'my_db';
```

Run the following sql queries on:
```bash
sql/00.sql
```

You are ready to run in the browser!

```bash
http://localhost:8000
```