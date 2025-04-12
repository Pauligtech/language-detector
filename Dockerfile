#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11
#COPY ./requirements.txt /app/requirements.txt
#RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
#COPY ./app /app

# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

# RUN pip install --no-cache-dir --upgrade pip && \
#     pip install --no-cache-dir --upgrade -r /app/requirements.txt
# COPY ./app /app
FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app/app



# Copy only requirements first to leverage caching


# Install dependencies


# Copy the entire app directory





