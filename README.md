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

## Contributing

1. Fork it ( https://github.com/bolshakov/gatling-docker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
