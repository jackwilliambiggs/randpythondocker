FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends git build-essential r-base python3.6 python3-pip python3-setuptools python3-dev
RUN pip3 install pre-commit black nbstripout
RUN Rscript -e "install.packages(c('styler', 'testthat'))"
