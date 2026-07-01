#!/bin/bash

# Справочник команд Bash с интер��ктивным меню

show_menu() {
  clear
  echo "╔════════════════════════════════════════════╗"
  echo "║      📚 СПРАВОЧНИК КОМАНД BASH             ║"
  echo "╚════════════════════════════════════════════╝"
  echo ""
  echo "1) 📂 Навигация по папкам"
  echo "2) 📝 Работа с файлами"
  echo "3) 📁 Работа с папками"
  echo "4) 🔍 Поиск и фильтрация"
  echo "5) 💾 Размер и хранилище"
  echo "6) 👤 Пользователи и права доступа"
  echo "7) 📦 Управление пакетами (Homebrew)"
  echo "8) 🖥️  Информация о системе"
  echo "9) 🌐 Интернет и сеть"
  echo "10) 🔄 Процессы и фоновые задачи"
  echo "11) 📜 История команд"
  echo "12) 📤 Архивирование"
  echo "13) 📨 Текстовые операции"
  echo "14) 🔐 Безопасность и шифрование"
  echo "15) ⏰ Планирование задач"
  echo "16) 🔗 Символические ссылки"
  echo "17) 🎨 Полезные алиасы"
  echo "18) 🚀 Комбинированные команды"
  echo "19) 💡 Советы и трюки"
  echo "20) 📋 Рабочие команды"
  echo "0) ❌ Выход"
  echo ""
}

show_navigation() {
  echo "📂 НАВИГАЦИЯ ПО ПАПКАМ"
  echo "======================================"
  echo "pwd                          # Показать текущую папку"
  echo "cd ~                         # Перейти в домашнюю папку"
  echo "cd ..                        # Перейти на одну папку вверх"
  echo "cd /path/to/folder           # Перейти в конкретную папку"
  echo "cd -                         # Вернуться в предыдущую папку"
  echo "ls                           # Список файлов в текущей папке"
  echo "ls -la                       # Список с подробной информацией"
  echo "ls -lh                       # Список с размерами (KB, MB, GB)"
  echo "ls -R                        # Рекурсивный список всех подпапок"
  echo "la                           # Alias для ls -la"
  echo "lah                          # Alias для ls -lah"
}

show_files() {
  echo "📝 РАБОТА С ФАЙЛАМИ"
  echo "======================================"
  echo "touch filename.txt           # Создать пустой файл"
  echo "cat filename.txt             # Показать содержимое файла"
  echo "cat file1.txt file2.txt      # Показать несколько файлов"
  echo "less filename.txt            # Показать файл постранично"
  echo "more filename.txt            # Альтернатива less"
  echo "head -n 10 file.txt          # Показать первые 10 строк"
  echo "tail -n 10 file.txt          # Показать последние 10 строк"
  echo "wc -l file.txt               # Подсчитать строки в файле"
  echo "nano filename.txt            # Открыть редактор nano"
  echo "vim filename.txt             # Открыть редактор vim"
  echo "cp source.txt dest.txt       # Копировать файл"
  echo "cp -r folder1 folder2        # Копировать папку"
  echo "mv oldname.txt newname.txt   # Переместить/переименовать"
  echo "rm filename.txt              # Удалить файл"
  echo "rm -r folder/                # Удалить папку со всем"
  echo "rm -rf folder/               # Принудительное удаление"
}

show_folders() {
  echo "📁 РАБОТА С ПАПКАМИ"
  echo "======================================"
  echo "mkdir newfolder              # Создать новую папку"
  echo "mkdir -p path/to/folder      # Создать папку и подпапки"
  echo "rmdir folder/                # Удалить пустую папку"
  echo "rm -r folder/                # Удалить папку со всем"
  echo "mv folder1 folder2           # Переименовать папку"
  echo "cp -r folder1 folder2        # Копировать папку"
  echo "find . -type d -name \"*.git\" # Найти все папки .git"
}

show_search() {
  echo "🔍 ПОИСК И ФИЛЬТРАЦИЯ"
  echo "======================================"
  echo "find . -name \"*.txt\"         # Найти все файлы .txt"
  echo "find ~ -name \"test*\"         # Найти файлы начинающиеся на test"
  echo "find / -type f -size +100m   # Найти файлы больше 100 МБ"
  echo "find ~ -type f -mtime +30    # Найти неиспользуемые 30+ дней"
  echo "grep \"text\" file.txt         # Найти строки с текстом"
  echo "grep -r \"text\" folder/       # Рекурсивный поиск"
  echo "grep -i \"text\" file.txt      # Поиск без учёта регистра"
  echo "grep -n \"text\" file.txt      # Показать номер строки"
  echo "grep -v \"text\" file.txt      # Показать БЕЗ текста"
  echo "which command                # Найти где находится команда"
  echo "whereis command              # Показать путь и man страницу"
  echo "which python3                # Найти где установлен Python"
}

show_storage() {
  echo "💾 РАЗМЕР И ХРАНИЛИЩЕ"
  echo "======================================"
  echo "df -h                        # Показать свободное место"
  echo "du -sh folder/               # Показать размер папки"
  echo "du -sh *                     # Показать размер всех папок"
  echo "du -sh ~/*                   # Показать размер в домашней"
  echo "du -sh ~/Downloads/*         # Показать размер скачанных"
  echo "ls -lh                       # Размер файлов в формате"
  echo "stat filename.txt            # Подробная информация о файле"
}

show_permissions() {
  echo "👤 ПОЛЬЗОВАТЕЛИ И ПРАВА ДОСТУПА"
  echo "======================================"
  echo "whoami                       # Показать текущего пользователя"
  echo "id                           # Показать ID пользователя"
  echo "sudo command                 # Запустить с правами администратора"
  echo "sudo -i                      # Войти в root режим"
  echo "su username                  # Переключиться на другого"
  echo "chmod 755 script.sh          # Изменить права доступа"
  echo "chmod +x script.sh           # Добавить права на выполнение"
  echo "chmod -r folder/             # Изменить права рекурсивно"
  echo "chown user:group file.txt    # Изменить владельца файла"
}

show_homebrew() {
  echo "📦 УПРАВЛЕНИЕ ПАКЕТАМИ (HOMEBREW)"
  echo "======================================"
  echo "brew --version               # Проверить версию Homebrew"
  echo "brew list                    # Список установленных пакетов"
  echo "brew search python           # Поиск пакета"
  echo "brew install python@3.11     # Установить пакет"
  echo "brew uninstall python@3.11   # Удалить пакет"
  echo "brew update                  # Обновить список пакетов"
  echo "brew upgrade                 # Обновить все пакеты"
  echo "brew info package            # Информация о пакете"
  echo "brew cleanup                 # Очистить кэш Homebrew"
}

show_system() {
  echo "🖥️  ИНФОРМАЦИЯ О СИСТЕМЕ"
  echo "======================================"
  echo "uname -a                     # Вся информация о системе"
  echo "uname -s                     # Название системы"
  echo "uname -r                     # Версия ядра"
  echo "uname -m                     # Архитектура процессора"
  echo "system_profiler              # Подробная информация о Mac"
  echo "sysctl -a                    # Системные параметры"
  echo "uptime                       # Время работы системы"
  echo "date                         # Текущая дата и время"
  echo "cal                          # Календарь"
  echo "vm_stat                      # Статистика памяти"
  echo "top                          # Монитор процессов (q выход)"
  echo "ps aux                       # Список всех процессов"
  echo "ps aux | grep python         # Найти процессы Python"
  echo "kill PID                     # Завершить процесс"
  echo "killall process_name         # Завершить все процессы"
}

show_network() {
  echo "🌐 ИНТЕРНЕТ И СЕТЬ"
  echo "======================================"
  echo "ping google.com              # Проверить соединение"
  echo "curl https://example.com     # Загрузить содержимое сайта"
  echo "curl -O https://example.com/file.zip # Скачать файл"
  echo "wget https://example.com/file.zip    # Альтернатива curl"
  echo "ifconfig                     # Информация о сетевых интерфейсах"
  echo "ipconfig getifaddr en0       # Получить IP адрес"
  echo "whois domain.com             # Информация о домене"
  echo "nslookup example.com         # Найти IP адрес сайта"
  echo "dig example.com              # DNS информация"
  echo "netstat                      # Статистика сети"
}

show_processes() {
  echo "🔄 ПРОЦЕССЫ И ФОНОВЫЕ ЗАДАЧИ"
  echo "======================================"
  echo "command &                    # Запустить в фоне"
  echo "jobs                         # Список фоновых процессов"
  echo "bg                           # Продолжить в фоне"
  echo "fg                           # Вернуть на передний план"
  echo "Ctrl+Z                       # Приостановить процесс"
  echo "Ctrl+C                       # Остановить процесс"
  echo "sleep 60                     # Ждать 60 секунд"
  echo "nohup command &              # Запустить игнорируя HANGUP"
  echo "screen                       # Создать новую сессию"
  echo "screen -ls                   # Список сессий"
  echo "screen -r session_name       # Подключиться к сессии"
}

show_history() {
  echo "📜 ИСТОРИЯ КОМАНД"
  echo "======================================"
  echo "history                      # Показать историю команд"
  echo "history 10                   # Показать последние 10 команд"
  echo "!command_name                # Повторить последнюю команду"
  echo "!!                           # Повторить последнюю команду"
  echo "!\$                           # Последний аргумент"
  echo "Ctrl+R                       # Поиск в истории"
  echo "clear                        # Очистить терминал"
}

show_archive() {
  echo "📤 АРХИВИРОВАНИЕ"
  echo "======================================"
  echo "tar -cf archive.tar folder/  # Создать архив TAR"
  echo "tar -xf archive.tar          # Распаковать архив TAR"
  echo "tar -czf archive.tar.gz folder/ # Создать сжатый архив"
  echo "tar -xzf archive.tar.gz      # Распаковать GZIP архив"
  echo "zip -r archive.zip folder/   # Создать ZIP архив"
  echo "unzip archive.zip            # Распаковать ZIP"
  echo "gzip file.txt                # Сжать файл"
  echo "gunzip file.gz               # Распаковать GZIP файл"
}

show_text() {
  echo "📨 ТЕКСТОВЫЕ ОПЕРАЦИИ"
  echo "======================================"
  echo "cat file.txt                 # Показать файл"
  echo "echo \"text\"                  # Вывести текст"
  echo "echo \"text\" > file.txt       # Записать в файл"
  echo "echo \"text\" >> file.txt      # Добавить в файл"
  echo "sort file.txt                # Отсортировать строки"
  echo "uniq file.txt                # Показать уникальные строки"
  echo "cut -d: -f1 file.txt         # Вырезать колонки"
  echo "sed 's/old/new/g' file.txt   # Заменить текст"
  echo "awk '{print \$1}' file.txt    # Обработать колонки"
  echo "tr 'a' 'b' < file.txt        # Заменить символы"
}

show_security() {
  echo "🔐 БЕЗОПАСНОСТЬ И ШИФРОВАНИЕ"
  echo "======================================"
  echo "md5 file.txt                 # MD5 хеш файла"
  echo "shasum file.txt              # SHA хеш файла"
  echo "ssh user@host                # Подключиться по SSH"
  echo "ssh-keygen -t rsa            # Создать SSH ключи"
  echo "ssh-copy-id user@host        # Скопировать SSH ключ"
  echo "openssl genrsa -out key.pem 2048 # Создать RSA ключ"
}

show_cron() {
  echo "⏰ ПЛАНИРОВАНИЕ ЗАДАЧ"
  echo "======================================"
  echo "crontab -e                   # Открыть редактор cron"
  echo "crontab -l                   # Показать текущие cron задачи"
  echo "crontab -r                   # Удалить все cron задачи"
  echo "at 10:30 command             # Запланировать задачу"
  echo "at -l                        # Список задач"
  echo ""
  echo "ФОРМАТ CRON: минута час день месяц день_недели команда"
  echo "0 3 * * * ~/cleanup.sh       # Каждый день в 3:00"
  echo "0 */2 * * * command          # Каждые 2 часа"
  echo "0 0 * * 0 command            # Каждое воскресенье"
}

show_symlinks() {
  echo "🔗 СИМВОЛИЧЕСКИЕ ССЫЛКИ"
  echo "======================================"
  echo "ln -s /source/path ~/link    # Создать символическую ссылку"
  echo "ln -s ~/long/path alias      # Создать ярлык на папку"
  echo "unlink ~/link                # Удалить символическую ссылку"
  echo "ls -l                        # Показать ссылки (отмечены @)"
}

show_aliases() {
  echo "🎨 ПОЛЕЗНЫЕ АЛИАСЫ"
  echo "======================================"
  echo "# Добавь в ~/.zprofile:"
  echo ""
  echo "alias ll='ls -lh'"
  echo "alias la='ls -la'"
  echo "alias rm='rm -i'             # Подтверждение"
  echo "alias mkdir='mkdir -p'       # Создавать родителей"
  echo "alias grep='grep --color'    # Цветной вывод"
  echo "alias py='python3'"
  echo "alias home='cd ~'"
  echo "alias back='cd -'"
  echo "alias downloads='cd ~/Downloads'"
  echo "alias documents='cd ~/Documents'"
  echo "alias update='brew update && brew upgrade'"
  echo "alias disk='du -sh ~/* | sort -rh'"
}

show_combined() {
  echo "🚀 КОМБИНИРОВАННЫЕ КОМАНДЫ"
  echo "======================================"
  echo "find . -name \"*.py\" | wc -l # Посчитать Python файлы"
  echo "find . -name \"*.py\" -exec wc -l {} + | tail -1 # Строки кода"
  echo "find . -name \"*.pyc\" -delete # Найти и удалить"
  echo "ps aux --sort=-%mem | head -10 # ТОП 10 по памяти"
  echo "find ~ -type f -size +100m  # Файлы больше 100 МБ"
  echo "du -sh * | sort -rh          # Размер папок"
  echo "find . -type f | wc -l       # Посчитать файлы"
  echo "tar -czf backup-\$(date +%Y-%m-%d).tar.gz folder/ # Бэкап"
}

show_tricks() {
  echo "💡 СОВЕТЫ И ТРЮКИ"
  echo "======================================"
  echo "echo \"text with spaces\"      # Пробелы в кавычках"
  echo "echo text\\ with\\ spaces     # Экранирование"
  echo "echo \$PATH                    # Показать переменную"
  echo "export MY_VAR=\"value\"        # Создать переменную"
  echo "echo \$(date)                  # Результат команды"
  echo ""
  echo "# Условия"
  echo "if [ -f file.txt ]; then echo \"Файл существует\"; fi"
  echo "if [ -d folder ]; then echo \"Папка существует\"; fi"
  echo ""
  echo "# Циклы"
  echo "for i in {1..10}; do echo \$i; done"
  echo "for file in *.txt; do cat \"\$file\"; done"
}

show_workingcmds() {
  echo "📋 РАБОЧИЕ КОМАНДЫ"
  echo "======================================"
  echo "# Очистка системы"
  echo "rm -rf ~/Library/Caches/*    # Очистить кэши"
  echo "rm -rf ~/.Trash/*            # Очистить корзину"
  echo "brew cleanup                 # Очистить Homebrew"
  echo ""
  echo "# Поиск больших файлов"
  echo "find ~ -size +500m -type f   # Файлы больше 500 МБ"
  echo "du -sh ~/* | sort -rh | head -10 # ТОП 10 больших папок"
  echo ""
  echo "# Проверка портов"
  echo "lsof -i :8080                # Какой процесс слушает порт"
  echo "netstat -tuln | grep LISTEN  # Все слушающие порты"
  echo ""
  echo "# Батарея (Mac)"
  echo "pmset -g batt                # Состояние батареи"
}

# Главный цикл
while true; do
  show_menu
  read -p "Выбери раздел (0-20): " choice

  case $choice in
    1) show_navigation ;;
    2) show_files ;;
    3) show_folders ;;
    4) show_search ;;
    5) show_storage ;;
    6) show_permissions ;;
    7) show_homebrew ;;
    8) show_system ;;
    9) show_network ;;
    10) show_processes ;;
    11) show_history ;;
    12) show_archive ;;
    13) show_text ;;
    14) show_security ;;
    15) show_cron ;;
    16) show_symlinks ;;
    17) show_aliases ;;
    18) show_combined ;;
    19) show_tricks ;;
    20) show_workingcmds ;;
    0) 
      echo ""
      echo "👋 До свидания!"
      exit 0
      ;;
    *)
      echo "❌ Неправильный выбор"
      sleep 1
      ;;
  esac

  echo ""
  read -p "Нажми Enter для продолжения..."
done
