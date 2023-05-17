FROM chjinhuu/detectron:v2.0.0
RUN pip install terminaltables -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install torch==1.13.0 torchvision==0.14.0 -i https://mirrors.aliyun.com/pypi/simple/
