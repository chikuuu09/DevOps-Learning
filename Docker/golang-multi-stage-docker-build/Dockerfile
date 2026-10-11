
###########################################
# BASE IMAGE - BUILD STAGE
###########################################

FROM python:3.12-slim AS build

WORKDIR /app

COPY calculator.py .

###########################################
# MULTI-STAGE BUILD
###########################################

FROM python:3.12-slim

WORKDIR /app

COPY --from=build /app/calculator.py .

###########################################
# RUN THE APPLICATION
###########################################

ENTRYPOINT ["python", "-u", "calculator.py"]
