# hadolint ignore=DL3059
FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /code

## Step 2a:
# Copy requirements. No need to redo pip installation unless requirements have changed.
COPY requirements.txt .

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN \
    python -m pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir --prefer-binary -r requirements.txt

## Step 2b:
# Copy source code to working directory
COPY app.py .
COPY model_data model_data
RUN ls -lah

## Step 4:
# Expose port 80
# Use `docker run -P` to publish all _exposed_ ports
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]
