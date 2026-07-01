#!/bin/bash

echo "🔨 КОМПИЛЯТОР C И C++"
echo "=================================="
echo ""
echo "1) Скомпилировать C программу"
echo "2) Скомпилировать C++ программу"
echo "3) Скомпилировать и запустить C"
echo "4) Скомпилировать и запустить C++"
echo ""

read -p "Выбери опцию (1-4): " choice

case $choice in
  1)
    read -p "Введи имя C файла (без .c): " filename
    gcc-16 ~/${filename}.c -o ~/${filename}
    echo "✅ Скомпилировано: ./${filename}"
    ;;
  2)
    read -p "Введи имя C++ файла (без .cpp): " filename
    g++-16 ~/${filename}.cpp -o ~/${filename}
    echo "✅ Скомпилировано: ./${filename}"
    ;;
  3)
    read -p "Введи имя C файла (без .c): " filename
    gcc-16 ~/${filename}.c -o ~/${filename}
    echo "✅ Скомпилировано и запущено:"
    echo ""
    ~/${filename}
    ;;
  4)
    read -p "Введи имя C++ файла (без .cpp): " filename
    g++-16 ~/${filename}.cpp -o ~/${filename}
    echo "✅ Скомпилировано и запущено:"
    echo ""
    ~/${filename}
    ;;
  *)
    echo "❌ Неправильный выбор"
    ;;
esac
