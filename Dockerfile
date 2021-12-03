FROM debian:sid

RUN sudo apt update -y \
    	&& sudo apt upgrade -y \
    	&& sudo apt install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev

RUN sudo mkdir -m 777 /cpuminer
ADD sudo entrypoint.sh /entrypoint.sh
RUN sudo chmod +x /entrypoint.sh
CMD sudo /entrypoint.sh
