#!/bin/bash

# Главное меню со всеми скриптами

while true; do
  clear
  echo "╔════════════════════════════════════════════╗"
  echo "║        🚀 ГЛАВНОЕ МЕНЮ ВСЕХ СКРИПТОВ      ║"
  echo "╚════════════════════════════════════════════╝"
  echo ""
  echo "📚 СПРАВОЧНИК:"
  echo "  0) 📖 Справочник команд Bash            [bash_help.sh]"
  echo ""
  echo "📂 BASH СКРИПТЫ:"
  echo "  1) 🌤️  Погода                   [weather.sh]"
  echo "  2) 💾 Информация о системе      [sysinfo.sh]"
  echo "  3) ⏱️  Таймер                   [timer.sh]"
  echo "  4) 💡 Мотивирующая цитата      [quote.sh]"
  echo "  5) 📁 Открыть проекты          [projects.sh]"
  echo "  6) 🧹 Очистить мусор           [cleanup.sh]"
  echo "  7) 🔍 Поиск языков программирования [find_languages.sh]"
  echo ""
  echo "🐍 PYTHON СКРИПТЫ:"
  echo "  8) 🎉 Hello World               [hello.py]"
  echo "  9) 🧮 Калькулятор              [calculator.py]"
  echo "  10) 📊 Демо списков            [list_demo.py]"
  echo "  11) 📝 Демо файлов             [file_demo.py]"
  echo "  12) 🎯 Менеджер задач (Python) [tasks.py]"
  echo ""
  echo "💎 RUBY СКРИПТЫ:"
  echo "  13) 🎉 Hello World              [hello.rb]"
  echo "  14) 🎯 ToDo список              [todo.rb]"
  echo "  15) 💡 Случайная цитата        [quote.rb]"
  echo ""
  echo "☕ JAVA СКРИПТЫ:"
  echo "  16) 🎉 Hello World              [HelloWorld.java]"
  echo "  17) 🧮 Калькулятор             [Calculator.java]"
  echo "  18) 🖥️  Информация о системе    [SystemInfo.java]"
  echo ""
  echo "🔧 C И C++ СКРИПТЫ:"
  echo "  19) 🎉 Hello World (C)          [hello.c]"
  echo "  20) 🧮 Калькулятор (C)          [calc.c]"
  echo "  21) 🎉 Hello World (C++)        [hello.cpp]"
  echo "  22) 🎓 Классы и объекты (C++)   [student.cpp]"
  echo "  23) 📊 Работа с массивами (C++) [array.cpp]"
  echo "  24) 🔨 Компилятор C/C++         [compile.sh]"
  echo ""
  echo "  99) ❌ Выход"
  echo ""
  read -p "Выбери опцию (0-24 или 99): " choice

  case $choice in
    # Справочник
    0) ~/bash_help.sh ;;
    
    # BASH скрипты
    1) ~/weather.sh ;;
    2) ~/sysinfo.sh ;;
    3) ~/timer.sh ;;
    4) ~/quote.sh ;;
    5) ~/projects.sh ;;
    6) ~/cleanup.sh ;;
    7) ~/find_languages.sh ;;
    
    # PYTHON скрипты
    8) python3 ~/hello.py ;;
    9) python3 ~/calculator.py ;;
    10) python3 ~/list_demo.py ;;
    11) python3 ~/file_demo.py ;;
    12) python3 ~/tasks.py ;;
    
    # RUBY скрипты
    13) ruby ~/hello.rb ;;
    14) ruby ~/todo.rb ;;
    15) ruby ~/quote.rb ;;
    
    # JAVA скрипты
    16) 
      javac ~/HelloWorld.java 2>/dev/null
      java -cp ~ HelloWorld
      ;;
    17) 
      javac ~/Calculator.java 2>/dev/null
      java -cp ~ Calculator
      ;;
    18) 
      javac ~/SystemInfo.java 2>/dev/null
      java -cp ~ SystemInfo
      ;;
    
    # C скрипты
    19)
      gcc-16 ~/hello.c -o ~/hello_c
      ~/hello_c
      rm ~/hello_c
      ;;
    20)
      gcc-16 ~/calc.c -o ~/calc_exe
      ~/calc_exe
      rm ~/calc_exe
      ;;
    
    # C++ скрипты
    21)
      g++-16 ~/hello.cpp -o ~/hello_cpp
      ~/hello_cpp
      rm ~/hello_cpp
      ;;
    22)
      g++-16 ~/student.cpp -o ~/student_exe
      ~/student_exe
      rm ~/student_exe
      ;;
    23)
      g++-16 ~/array.cpp -o ~/array_exe
      ~/array_exe
      rm ~/array_exe
      ;;
    
    # Компилятор
    24) ~/compile.sh ;;
    
    99) 
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
  read -p "Нажми Enter для возврата в меню..."
done
