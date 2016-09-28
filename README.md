##Getting started

####Install Cordova globally

````
sudo npm install -g cordova
````

[Cordova Docs](https://cordova.apache.org/docs/en/latest/guide/cli/#installing-the-cordova-cli) say to install with sudo, but I don't think that's necessary.

####Running the proof of concept (iOS)

- cd into this repo
- run `make testbuild`
- open `platforms/ios/Iron\ Young.xcodeproj`
- run in simulator or on device
- If it worked, you should see "Iron Young React Goes Here"

####Setup React app inside this directory

- clone the react app inside the root of this repo
- add it's dir to .gitignore (and `www/`)
- replace Makefile `path-to-react-app` with the folder name
- bundle the react app
- run `make`
- open `platforms/ios/Iron\ Young.xcodeproj`
