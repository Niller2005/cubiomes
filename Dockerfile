FROM alpine:3
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN apk add build-base
RUN apk add curl-dev
RUN make libcubiomes
RUN gcc Gods_seedfinder.c libcubiomes.a -lm -lpthread -lcurl -o Gods
CMD ./Gods ${GSF_START} ${GSF_END} ${GSF_THREADS} ${GSF_FILTER_RANGE} ${GSF_FULL_RANGE}
