FROM python:3.9-alpine3.19

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD python -m streamlit run main.py
