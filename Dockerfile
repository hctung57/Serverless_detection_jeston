FROM dustynv/jetson-inference:r32.7.1
RUN pip install Flask

RUN mkdir data
ADD data data

RUN mkdir detection

COPY jetson_detection.py detection

WORKDIR detection
# RUN python3 setup.py

EXPOSE 8080
CMD ["pythone","jetson_detection.py"]

