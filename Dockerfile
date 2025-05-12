FROM python:3.11-slim
RUN pip install fastapi uvicorn
COPY main.py /app/
WORKDIR /app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
