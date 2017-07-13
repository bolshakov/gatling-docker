# Gatling Docker 

This repository contains files required to build [Gatling](http://gatling.io) docker image. 

## Build

    make build VERSION=2.2.5

## Usage 

You can use this image to run your own simulations:

    docker run -v - `${pwd}`/results:/gatling/results bolshakov/gatling:2.2.5 \
      --simulations-folder /gatling/user-files/simulations \
      --simulation computerdatabase.BasicSimulation

It will run simulation and produce report into `./results` directory.  
