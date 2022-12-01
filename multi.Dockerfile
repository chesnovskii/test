FROM golang:1.17 as builder
LABEL maintainer="Stanislav Chesnovskii"

FROM chesnovskii/sample@sha256:6236552681e2a48d3af7f8a834b4305e19239d25c75b0a44a9c37794354a5ce4
