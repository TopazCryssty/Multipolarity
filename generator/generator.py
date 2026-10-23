import csv
import os
import random  # Подключаем модуль для генерации случайных чисел

# === НАСТРОЙКА ПУТЕЙ ===
# Замени этот путь на реальный путь к папке ТВОЕГО мода!
MOD_PATH = "C:/Users/Kostya/Documents/Paradox Interactive/Hearts of Iron IV/mod/Multipolarity"
# =======================

# Создаем структуру папок мода, если её ещё нет
paths = [
    "common/country_tags",
    "common/countries",
    "history/countries",
    "localisation/russian"
]

for p in paths:
    os.makedirs(os.path.join(MOD_PATH, p), exist_ok=True)

csv_file_path = "countries.csv"

# Открываем общие файлы ОДИН раз перед циклом
tag_file = open(os.path.join(MOD_PATH, "common/country_tags/01_generated_tags.txt"), "w", encoding="utf-8-sig")
color_file = open(os.path.join(MOD_PATH, "common/countries/01_generated_colors.txt"), "w", encoding="utf-8-sig")
loc_file = open(os.path.join(MOD_PATH, "localisation/russian/countries_generated_l_russian.yml"), "w", encoding="utf-8-sig")

# Сразу пишем заголовок локализации
loc_file.write("l_russian:\n")

with open(csv_file_path, mode='r', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    
    for row in reader:
        tag = row['tag'].strip().upper()
        name = row['name'].strip()
        capital = row['capital'].strip()
        
        # МАГИЯ РАНДОМА: Если в таблице пусто, генерируем цвет в диапазоне от 40 до 210.
        # Это исключит появление чисто черных или вырвиглазно-белых стран.
        r = row['r'].strip() if row.get('r') and row['r'].strip() else str(random.randint(40, 210))
        g = row['g'].strip() if row.get('g') and row['g'].strip() else str(random.randint(40, 210))
        b = row['b'].strip() if row.get('b') and row['b'].strip() else str(random.randint(40, 210))
        
        country_file_name = f"{tag} - {name}.txt"
        
        # 1. Пишем тег в общий файл тегов
        tag_file.write(f"{tag} = \"countries/{country_file_name}\"\n")
        
        # 2. Пишем цвета в общий файл цветов
        color_file.write(f"{tag} = {{\n\tcolor = rgb {{ {r} {g} {b} }}\n\tcolor_ui = rgb {{ {r} {g} {b} }}\n}}\n\n")
        
        # 3. Пишем строки локализации в общий файл
        loc_file.write(f" {tag}:0 \"{name}\"\n")
        loc_file.write(f" {tag}_DEF:0 \"{name}\"\n")
        loc_file.write(f" {tag}_ADJ:0 \"{name}\"\n")
        
        # 4. Индивидуальный файл в common/countries/
        with open(os.path.join(MOD_PATH, f"common/countries/{country_file_name}"), "w", encoding="utf-8-sig") as cf:
            cf.write("# Blank country files\ngraphical_culture = eastern_european_graphics\ngraphical_culture_2d = eastern_european_2d\n")

        # 5. Индивидуальный файл истории в history/countries/
        with open(os.path.join(MOD_PATH, f"history/countries/{country_file_name}"), "w", encoding="utf-8-sig") as hf:
            history_template = f"""capital = {capital}
set_research_slots = 3
set_stability = 0.50
set_war_support = 0.50

# Базовая политика (Нейтралитет)
set_politics = {{
	ruling_party = neutrality
	last_election = "1936.1.1"
	election_frequency = 48
	elections_allowed = no
}}
set_popularities = {{
	neutrality = 100
}}
"""
            hf.write(history_template)

# Закрываем общие файлы
tag_file.close()
color_file.close()
loc_file.close()

print("Готово! Все страны сгенерированы. Пустые цвета автоматически заменены на случайные.")