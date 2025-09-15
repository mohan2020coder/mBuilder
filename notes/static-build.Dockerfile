FROM monihub/mbuilder

# Copy your app
WORKDIR /go/src/app/dist/app
COPY . .


# Build the static binary using build-static.sh
WORKDIR /go/src/mBuilder
RUN EMBED=/go/src/app/dist/app ./build-static.sh