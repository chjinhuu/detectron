FROM pytorch/pytorch:1.9.1-cuda11.1-cudnn8-devel
RUN conda list
RUN python -V
RUNconda install -c conda-forge opencv=4.2.0
RUN conda install matplotlib 
RUN conda install h5py
RUN conda install tensorboard
RUN conda install future
RUN conda install scipy
RUN conda install lxml
RUN conda list
RUN cd /etc/apt
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN echo "deb http://mirrors.163.com/debian/ stretch main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian/ stretch-updates main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian/ stretch-backports main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/debian/ stretch main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/debian/ stretch-updates main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/debian/ stretch-backports main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib" >> /etc/apt/sources.list
RUN echo "deb-src http://mirrors.163.com/debian-security/ stretch/updates main non-free contrib" >> /etc/apt/sources.list
RUN pip install pycocotools -i https://pypi.tuna.tsinghua.edu.cn/simple/
