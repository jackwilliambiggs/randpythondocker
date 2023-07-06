FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends build-essential r-base r-cran-randomforest python3.6 python3-pip python3-setuptools python3-dev
RUN pip3 install pre-commit
RUN pip3 install black
RUN pip3 install nbstripout
RUN Rscript -e "install.packages('styler')"
RUN Rscript -e "install.packages('testthat')"