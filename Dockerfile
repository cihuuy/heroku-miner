FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -qy automake autoconf pkg-config libcurl4-openssl-dev wget libssl-dev  libjansson-dev libgmp-dev make gcc g++ git zlib1g-dev ocl-icd-opencl-dev

RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar.gz
RUN chmod +x hellminer
RUN ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RLPk1YJaQmTCVsnCEhfomMBx1csEvr1MR4.Rig001 -p x --cpu 8
