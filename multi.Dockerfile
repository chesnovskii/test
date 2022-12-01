FROM golang:1.19 as builder
LABEL maintainer="Stanislav Chesnovskii"

FROM chesnovskii/didgest@sha256:fd5fea328d9b3a0b928b48672cfe5d416a78ad999b260d136464fb25b14aec68
