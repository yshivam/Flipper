# Flipper - An Interactive way to Build, Ship & Navigate your Docker containers. 

Flipper is a Docker playground which allows users to run Docker commands in a matter of seconds. It gives the experience of having a free RHEL/Cent OS Virtual Machine in browser, where you can build and run Docker containers.

# Highlights:

- Flipper uses Python as a backend scripting language
- Flipper uses Python-CGI in order to interact through a Web server with a client running a Web browser.
- It uses HTML/CSS as a Front-end language.
- It can be hosted on your Laptop flawlessly

# Cloning the Repository.

```
git clone https://github.com/yshivam/Flipper/
```

# Go to the Flipper Directory.

```
cd Flipper/
```

## Building Docker Image.

```
docker build -t yshivam/flipper .
```

## Running the Flipper Docker Image.

```
docker run -dit --privileged -v /var/run/docker.sock:/var/run/docker.sock -p 82:80 --name portalUI yshivam/flipper
```

## Executing the Flipper Docker Image.
```
docker exec -it portalUI bash
```

## Executing the following commands.
```
source service-script.sh
```

## Accessing the Flipper under Web Browser.

Go to your browser and open up http://<IP>:82 and you should be able to see Flipper UI
