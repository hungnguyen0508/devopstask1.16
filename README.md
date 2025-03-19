# example-frontend

This project is created to help learn docker configurations for frontend projects. The README starting from "Prerequisites" is written without Docker in mind so student has to figure out how to construct their configuration based on the README. However, there are some additional helpers added in the README and in the exercise description.

> Notice, that all the information is not needed in all the exercises. Don't just copy-paste.

# Prerequisites

Install [node](https://nodejs.org/en/download/). 

Example node install instructions for LTS node 16.x:
```
curl -sL https://deb.nodesource.com/setup_16.x | bash
sudo apt install -y nodejs
```

Check your install with `node -v && npm -v`

Install all packages with `npm install`

# Starting in production mode

First, you need to build the static files with `npm run build`

This will generate them into `build` folder.

An example for serving static files:

Use npm package called serve to serve the project in port 5000:
- install: `npm install -g serve`
- serve: `serve -s -l 5000 build`

Test that the project is running by going to <http://localhost:5000>

