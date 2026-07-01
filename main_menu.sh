#!/bin/bash

# Главное меню со всеми скриптами

while true; do
  clear
  echo "╔════════════════════════════════════════════╗"
  echo "║        🚀 ГЛАВНОЕ МЕНЮ ВСЕХ СКРИПТОВ      ║"
  echo "╚════════════════════════════════════════════╝"
  echo ""
  echo "📂 BASH СКРИПТЫ:"
  echo "  1) 🌤️  Погода"
  echo "  2) 💾 Информация о системе"
  echo "  3) ⏱️  Таймер"
  echo "  4) 💡 Мотивирующая цитата"
  echo "  5) 📁 Открыть проекты"
  echo "  6) 🧹 Очистить мусор"
  echo "  7) 🔍 Поиск языков программирования"
  echo ""
  echo "🐍 PYTHON СКРИПТЫ:"
  echo "  8) 🎉 Hello World"
  echo "  9) 🧮 Калькулятор"
  echo "  10) 📊 Демо списков"
  echo "  11) 📝 Демо файлов"
  echo "  12) 🎯 Менеджер задач"
  echo ""
  echo "  0) ❌ Выход"
  echo ""
  read -p "Выбери опцию (0-12): " choice

  case $choice in
    1) 
      echo "🌤️  Загружаю погоду..."
      sleep 1
      ~/weather.sh
      ;;
    2) 
      ~/sysinfo.sh
      ;;
    3) 
      ~/timer.sh
      ;;
    4) 
      ~/quote.sh
      ;;
    5) 
      ~/projects.sh
      ;;
    6) 
      ~/cleanup.sh
      ;;
    7) 
      ~/find_languages.sh
      ;;
    8) 
      python3 ~/hello.py
      ;;
    9) 
      python3 ~/calculator.py
      ;;
    10) 
      python3 ~/list_demo.py
      ;;
    11) 
      python3 ~/file_demo.py
      ;;
    12) 
      python3 ~/tasks.py
      ;;
    0) 
      echo ""
      echo "👋 Спасибо за использование! До свидания!"
      echo ""
      exit 0
      ;;
    *) 
      echo "❌ Неправильный выбор"
      sleep 1
      ;;
  esac

  echo ""
  read -p "��ажми Enter для возврата в меню..."
done
