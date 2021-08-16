FROM python:3.8
RUN mkdir /bdlpoc
ENV PATH $PATH:$HOME/.local/bin
WORKDIR /bdlpoc/
ADD . /bdlpoc/
RUN python3.8 -m pip install -r requirements.txt --user
CMD ["python3.8","/bdlpoc/main.py"]