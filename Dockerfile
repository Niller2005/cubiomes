FROM alpine:3
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN apk add build-base
RUN apk add curl-dev
RUN make god
CMD ./god ${GSF_START} ${GSF_END} ${GSF_THREADS} ${GSF_FILTER_RANGE} ${GSF_FULL_RANGE} ${GSF_GENIMG} ${GSF_RAW}
