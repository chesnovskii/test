FROM golang:1.19 as builder
LABEL maintainer="Stanislav Chesnovskii"

FROM chesnovskii/didgest@sha256:02677ecad56d5a13fa825028a5f499d1c1f8e59a5b4aee0acdedb439aac20e37
