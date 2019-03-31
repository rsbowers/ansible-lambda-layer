FROM lambci/lambda:build-python3.6

RUN pip install ansible==2.7.9 -t python