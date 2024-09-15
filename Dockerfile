# Use uma imagem base com Python
FROM python:3.10-slim

# Crie e defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos do projeto para o diretório de trabalho
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Exponha a porta em que o Flask será executado
EXPOSE 5000

# Defina a variável de ambiente FLASK_APP
ENV FLASK_APP=app.py

# Comando para iniciar o aplicativo Flask
CMD ["flask", "run", "--host=0.0.0.0"]
