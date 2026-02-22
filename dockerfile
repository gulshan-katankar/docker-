#use an official python runtime as a parent image
FROM  python:3.8-slim

#set the working dir in the container
WORKDIR /app

#copy the current dir content to the container at /app
COPY . /app

#install any needed packages specified in rquirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#make port available to world outside the container
EXPOSE 5000

#define env variable
ENV FLASK_APP=app.py

#Run the flask app
CMD ["flask", "run", "--host=0.0.0.0"]