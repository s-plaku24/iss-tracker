FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

ENV STREAMLIT_LOG_LEVEL=debug

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
