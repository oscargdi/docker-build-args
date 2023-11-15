FROM python:3.12

ARG BUILD
ENV BUILD=${BUILD}

ADD . .
RUN pip install -r requirements.txt
CMD python main.py
