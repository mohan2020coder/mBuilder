FROM monihub/mbuilder:latest

# Switch to your apps directory
WORKDIR /go/src/app/dist/app
COPY . .

RUN apt-get update && apt-get install -y \
    flex \
    gettext \
    libtool \
    patchelf \
    cmake \
    autopoint \
    && rm -rf /var/lib/apt/lists/*


ENV FRANKENPHP_VERSION=1.0.0

# Go back up and run the builder script from mBuilder
WORKDIR /go/src/app
RUN EMBED=dist/app/ /go/src/mBuilder/build-static.sh
