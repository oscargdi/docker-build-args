FROM python:3.12

ARG BUILD_GREETING
ENV GREETING=${BUILD_GREETING}

ADD . .
RUN pip install -r requirements.txt
CMD python main.py
