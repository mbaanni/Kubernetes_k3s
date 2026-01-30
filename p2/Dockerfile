FROM python:3.11-alpine

WORKDIR /app

COPY app_site ./

RUN pip install -r requirement.txt


# Expose port 8000
EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

