import psycopg2
import os

def get_min_max_age():
    # Настройки подключения к базе данных
    db_host = os.getenv('DB_HOST', 'localhost')
    db_port = os.getenv('DB_PORT', '5432')
    db_name = os.getenv('DB_NAME', 'Nebsytnov')
    db_user = os.getenv('DB_USER', 'postgres')
    db_password = os.getenv('DB_PASSWORD', '12345678')

    # Подключаемся к базе данных
    try:
        conn = psycopg2.connect(
            host=db_host,
            port=db_port,
            database=db_name,
            user=db_user,
            password=db_password
        )
        cursor = conn.cursor()

        # Запрос для нахождения минимального и максимального возраста для имен длиной меньше 6 символов
        query = """
        SELECT MIN(age), MAX(age)
        FROM test_table
        WHERE LENGTH(name) < 6;
        """
        cursor.execute(query)
        result = cursor.fetchone()
        
        # Выводим результат
        if result:
            print(f"Минимальный возраст: {result[0]}")
            print(f"Максимальный возраст: {result[1]}")
        else:
            print("Нет данных для имен длиной меньше 6 символов.")
        
        # Закрываем соединение
        cursor.close()
        conn.close()

    except Exception as e:
        print(f"Ошибка при подключении к базе данных: {e}")

if __name__ == '__main__':
    get_min_max_age()
