# using base image python 3
FROM python:3

# define the directory for worckspace with containers
WORKDIR /src/app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# run install all dependencies from python
RUN pip install --no-cache-dir -r requirements.txt

# copy all application
COPY . .

# comand for execute the application
CMD [ "python", "src/app/main.py" ]