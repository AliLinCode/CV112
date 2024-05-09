# Використовуємо офіційний образ Python версії 3.9
FROM python:3.9

# Встановлюємо Flask та бібліотеку requests
RUN pip install Flask requests

# Створюємо робочий каталог /app та копіюємо усі файли проекту туди
WORKDIR /app
COPY . /app

# Вказуємо, що контейнер буде слухати порт 5000
EXPOSE 5000

# Команда для запуску сервера Flask
CMD ["python", "app.py"]
