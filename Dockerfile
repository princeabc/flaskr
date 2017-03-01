FROM python:2.7

WORKDIR /flaskr
ADD requirements.txt $WORKDIR/requirements.txt
RUN pip install -r $WORKDIR/requirements.txt

ADD . /flaskr

EXPOSE 5000

CMD ["python", "flaskr.py"]
