Apache maven image for docker

# Build

Download, CD to the folder:

    $ sudo docker build --tag wpic/maven .

or pull it from server:

    $ sudo docker pull wpic/maven

# Run it

    $ sudo docker run -it --privileged=true \
            -v /your/maven/project/folder:/build \
            -v $HOME/.m2:/root/.m2 \
            wpic/maven mvn -f /build clean install
