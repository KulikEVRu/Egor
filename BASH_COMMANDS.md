# 🐚 Справочник команд Bash

## 📂 Навигация по папкам

```bash
pwd                          # Показать текущую папку
cd ~                         # Перейти в домашнюю папку
cd ..                        # Перейти на одну папку вверх
cd /path/to/folder           # Перейти в конкретную папку
cd -                         # Вернуться в предыдущую папку
ls                           # Список файлов в текущей папке
ls -la                       # Список файлов с подробной информацией (включая скрытые)
ls -lh                       # Список с размерами в читаемом формате (KB, MB, GB)
ls -R                        # Рекурсивный список всех подпапок
la                           # Alias для ls -la (если установлен)
lah                          # Alias для ls -lah
```

---

## 📝 Работа с файлами

```bash
touch filename.txt           # Создать пустой файл
cat filename.txt             # Показать содержимое файла
cat file1.txt file2.txt      # Показать несколько файлов
less filename.txt            # Показать файл постранично (q для выхода)
more filename.txt            # Альтернатива less
head -n 10 file.txt          # Показать первые 10 строк
tail -n 10 file.txt          # Показать последние 10 строки
wc -l file.txt               # Подсчитать строки в файле
nano filename.txt            # Открыть редактор nano
vim filename.txt             # Открыть редактор vim
cp source.txt dest.txt       # Копировать файл
cp -r folder1 folder2        # Копировать папку (рекурсивно)
mv oldname.txt newname.txt   # Переместить/переименовать файл
mv file.txt /path/to/folder/ # Переместить файл в папку
rm filename.txt              # Удалить файл
rm -r folder/                # Удалить папку со всем содержимым
rm -rf folder/               # Принудительное удаление (без вопросов)
```

---

## 📁 Работа с папками

```bash
mkdir newfolder              # Создать новую папку
mkdir -p path/to/folder      # Создать папку и все подпапки
rmdir folder/                # Удалить пустую папку
rm -r folder/                # Удалить папку со всем содержимым
mv folder1 folder2           # Переименовать папку
cp -r folder1 folder2        # Копировать папку
find . -type d -name "*.git" # Найти все папки с именем .git
```

---

## 🔍 Поиск и фильтрация

```bash
find . -name "*.txt"         # Найти все файлы .txt в текущей папке
find ~ -name "test*"         # Найти файлы начинающиеся на "test"
find / -type f -size +100m   # Найти файлы больше 100 МБ
find ~ -type f -mtime +30    # Найти файлы не трогавшиеся 30+ дней
grep "text" file.txt         # Найти строки с текстом в файле
grep -r "text" folder/       # Рекурсивный поиск в папке
grep -i "text" file.txt      # Поиск без учёта регистра
grep -n "text" file.txt      # Показать номер строки
grep -v "text" file.txt      # Показать строки БЕЗ текста
which command                # Найти где находится команда
whereis command              # Показать путь к команде и её man странице
which python3                # Найти где установлен Python
```

---

## 💾 Размер и хранилище

```bash
df -h                        # Показать свободное место на диске
du -sh folder/               # Показать размер папки
du -sh *                     # Показать размер всех папок/файлов
du -sh ~/*                   # Показать размер в домашней папке
du -sh ~/Downloads/*         # Показать размер скачанных файлов
ls -lh                       # Показать размер файлов в читаемом формате
stat filename.txt            # Показать подробную информацию о файле
```

---

## 👤 Пользователи и права доступа

```bash
whoami                       # Показать текущего пользователя
id                           # Показать ID пользователя и группы
sudo command                 # Запустить команду с правами администратора
sudo -i                      # Войти в root режим
su username                  # Переключиться на другого пользователя
chmod 755 script.sh          # Изменить права доступа (755 = rwxr-xr-x)
chmod +x script.sh           # Добавить права на выполнение
chmod -r folder/             # Изменить права рекурсивно
chown user:group file.txt    # Изменить владельца файла
```

---

## 📦 Управление пакетами (Homebrew)

```bash
brew --version               # Проверить версию Homebrew
brew list                    # Список установленных пакетов
brew search python           # Поиск пакета
brew install python@3.11     # Установить пакет
brew uninstall python@3.11   # Удалить пакет
brew update                  # Обновить список пакетов
brew upgrade                 # Обновить все пакеты
brew info package            # Информация о пакете
brew cleanup                 # Очистить кэш Homebrew
```

---

## 🖥️ Информация о системе

```bash
uname -a                     # Вся информация о системе
uname -s                     # Название системы (Darwin для Mac)
uname -r                     # Версия ядра
uname -m                     # Архитектура процессора
system_profiler              # Подробная информация о Mac
system_profiler SPHardwareDataType # Информация об оборудовании
sysctl -a                    # Системные параметры
uptime                       # Время работы системы
date                         # Текущая дата и время
cal                          # Календарь
vm_stat                      # Статистика памяти
top                          # Монитор процессов (q для выхода)
ps aux                       # Список всех запущенных процессов
ps aux | grep python         # Найти процессы Python
kill PID                     # Завершить процесс по ID
killall process_name         # Завершить все процессы с этим именем
```

---

## 🌐 Интернет и сеть

```bash
ping google.com              # Проверить соединение с сайтом
curl https://example.com     # Загрузить содержимое сайта
curl -O https://example.com/file.zip # Скачать файл
wget https://example.com/file.zip # Альтернатива curl
ifconfig                     # Информация о сетевых интерфейсах
ipconfig getifaddr en0       # Получить IP адрес
whois domain.com             # Информация о домене
nslookup example.com         # Найти IP адрес сайта
dig example.com              # DNS информация
netstat                      # Статистика сети
```

---

## 🔄 Процессы и фоновые задачи

```bash
command &                    # Запустить команду в фоне
jobs                         # Список фоновых процессов
bg                           # Продолжить процесс в фоне
fg                           # Вернуть процесс на п��редний план
Ctrl+Z                       # Приостановить текущий процесс
Ctrl+C                       # Остановить текущий процесс
sleep 60                     # Ждать 60 секунд
nohup command &              # Запустить команду игнорируя HANGUP
screen                       # Создать новый экран/сессию
screen -ls                   # Список сессий
screen -r session_name       # Подключиться к сессии
```

---

## 📜 История команд

```bash
history                      # Показать историю команд
history 10                   # Показать последние 10 команд
!command_name                # Повторить последнюю команду начинающуюся на...
!!                           # Повторить последнюю команду
!$                           # Последний аргумент предыдущей команды
Ctrl+R                       # Поиск в истории команд
clear                        # Очистить терминал
```

---

## 📤 Архивирование

```bash
tar -cf archive.tar folder/  # Создать архив TAR
tar -xf archive.tar          # Распаковать архив TAR
tar -czf archive.tar.gz folder/ # Создать сжатый архив (GZIP)
tar -xzf archive.tar.gz      # Распаковать GZIP архив
zip -r archive.zip folder/   # Создать ZIP архив
unzip archive.zip            # Распаковать ZIP
gzip file.txt                # Сжать файл
gunzip file.gz               # Распаковать GZIP файл
```

---

## 📨 Текстовые операции

```bash
cat file.txt                 # Показать файл
echo "text"                  # Вывести текст
echo "text" > file.txt       # Записать в файл (перезапись)
echo "text" >> file.txt      # Добавить в файл (не перезапись)
sort file.txt                # Отсортировать строки
uniq file.txt                # Показать только уникальные строки
cut -d: -f1 file.txt         # Вырезать колонки
sed 's/old/new/g' file.txt   # Заменить текст
awk '{print $1}' file.txt    # Обработать колонки
tr 'a' 'b' < file.txt        # Заменить символы
```

---

## 🔐 Безопасность и шифрование

```bash
md5 file.txt                 # MD5 хеш файла
shasum file.txt              # SHA хеш файла
ssh user@host                # Подключиться по SSH
ssh-keygen -t rsa            # Создать SSH ключи
ssh-copy-id user@host        # Скопировать SSH ключ на сервер
openssl genrsa -out key.pem 2048 # Создать RSA ключ
```

---

## ⏰ Планирование задач

```bash
crontab -e                   # Открыть редактор cron задач
crontab -l                   # Показать текущие cron задачи
crontab -r                   # Удалить все cron задачи
at 10:30 command             # Запланировать задачу на время
at -l                        # Список запланированных задач
```

**Формат cron:** `минута час день месяц день_недели команда`
```bash
0 3 * * * ~/cleanup.sh       # Каждый день в 3:00 ночи
0 */2 * * * command          # Каждые 2 часа
0 0 * * 0 command            # Каждое воскресенье в полночь
```

---

## 🔗 Символические ссылки

```bash
ln -s /source/path ~/link    # Создать символическую ссылку
ln -s ~/long/path alias      # Создать ярлык на папку
unlink ~/link                # Удалить символическую ссылку
ls -l                        # Показать ссылки (они отмечены @)
```

---

## 📋 Рабочие команды для быстрого использования

```bash
# Очистка системы
rm -rf ~/Library/Caches/*    # Очистить кэши
rm -rf ~/.Trash/*            # Очистить корзину
brew cleanup                 # Очистить Homebrew

# Поиск больших файлов
find ~ -size +500m -type f   # Файлы больше 500 МБ
du -sh ~/* | sort -rh | head -10 # ТОП 10 больших папок

# Проверка портов
lsof -i :8080                # Какой процесс слушает порт 8080
netstat -tuln | grep LISTEN  # Все слушающие порты

# Работа с текстом
grep -r "text" . --include="*.py" # Поиск в Python файлах
find . -name "*.pyc" -delete # Удалить все .pyc файлы

# Скорость интернета
speedtest-cli                # Тест скорости интернета
curl -w "@curl-format.txt" -o /dev/null -s https://www.google.com # Проверить время ответа

# Батарея (Mac)
pmset -g batt                # Состояние батареи
```

---

## 🎨 Полезные алиасы для добавления в ~/.zprofile

```bash
# Добавь в ~/.zprofile:

alias ll='ls -lh'
alias la='ls -la'
alias rm='rm -i'             # Подтверждение при удалении
alias cp='cp -i'             # Подтверждение при копировании
alias mv='mv -i'             # Подтверждение при перемещении
alias mkdir='mkdir -p'       # Создавать родительские папки
alias grep='grep --color'    # Цветной вывод
alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|;  |;g"'

# Навигация
alias home='cd ~'
alias back='cd -'
alias downloads='cd ~/Downloads'
alias documents='cd ~/Documents'

# Python
alias py='python3'
alias python='python3'

# Git (если используешь)
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log'

# Системные команды
alias update='brew update && brew upgrade'
alias disk='du -sh ~/* | sort -rh'
alias memory='vm_stat | grep "Pages free"'
```

---

## 🚀 Комбинированные команды (pipelines)

```bash
# Найти все Python файлы
find . -name "*.py" | wc -l

# Посчитать строки кода
find . -name "*.py" -exec wc -l {} + | tail -1

# Найти и удалить
find . -name "*.pyc" -delete

# Показать ТОП 10 процессов по памяти
ps aux --sort=-%mem | head -10

# Все файлы больше 100 МБ
find ~ -type f -size +100m -exec ls -lh {} \;

# Показать размер папок в текущей директории
du -sh * | sort -rh

# Посчитать файлы в папке
find . -type f | wc -l

# Зарезервировать текущее состояние
tar -czf backup-$(date +%Y-%m-%d).tar.gz folder/
```

---

## 📚 Справка по командам

```bash
man command                  # Показать справку (man страницу)
command --help               # Краткая справка
command -h                   # Краткая справка
info command                 # Альтернативная справка
whatis command               # Одна строка описания
```

**Навигация в man:**
- `Space` — следующая страница
- `q` — выход
- `/text` — поиск текста
- `n` — следующий результат поиска

---

## 💡 Советы и трюки

```bash
# Экранирование специальных символов
echo "text with spaces"      # Пробелы в кавычках
echo text\ with\ spaces      # Или экранирование обратным слэшем

# Переменные окружения
echo $PATH                   # Показать переменную PATH
export MY_VAR="value"        # Создать переменную окружения
echo $HOME                   # Домашняя папка

# Подстановка команд
echo $(date)                 # Вывести результат команды
echo `date`                  # Старый синтаксис (менее рекомендуется)

# Условия
if [ -f file.txt ]; then echo "Файл существует"; fi
if [ -d folder ]; then echo "Папка существует"; fi

# Циклы
for i in {1..10}; do echo $i; done
for file in *.txt; do cat "$file"; done
```

---

**Создано:** 2026-07-01  
**Версия:** 1.0  
**Язык:** Bash/Zsh (для Mac и Linux)

Этот справочник постоянно пополняется новыми командами! 🚀
