FROM python:3.7

ADD . /app

WORKDIR /app
RUN python -m pip install -r requirements.txt


EXPOSE 5000

ENTRYPOINT [ "python" ] 
CMD [ "-m" "flask" "run" ] 
