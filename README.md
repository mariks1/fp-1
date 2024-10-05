# Лабараторная работа №1

---
Хасаншин Марат Айратович P3333  
Проблемы номер 15 и 16

## Описание проблем

---

### Проблема 15 

Начиная с левого верхнего угла сетки 2 x 2 и имея возможность двигаться только вправо и вниз, существует ровно 6 столько маршрутов, чтобы попасть в правый нижний угол.



Сколько таких путей через сетку 20 x 20?

### Проблема 16

$
2^{15} = 32768
$
и сумма цифр равна 3 + 2 + 7 + 6 + 8 = 26.

Какая сумма цифр у $2^{1000}$?


## Решение проблем

Решение проблемы 15 представлено в файле [LatticePaths.hs](./src/LatticePaths.hs)  
Проблема была решена 5 способами:

- Рекурсией (функция __recursionMethod__)
- Хвостовой рекурсией (функция __tailRecursionMethod__)
- Модульным со сверсткой (функция __modularMethod__)
- Генерация последовательности при помощи отображения (функция __mapMethod__)
- Используя бесконечный массив (функция __infiniteListMethod__)  

Решение данной проблемы на c++:

```c++
#include <iostream>

using namespace std;

unsigned long long binomialCoefficient(int n, int k) {
    if (k > n) return 0;
    if (k == 0 || k == n) return 1;

    unsigned long long result = 1;
    for (int i = 0; i < k; ++i) {
        result *= (n - i);
        result /= (i + 1);
    }
    return result;
}

int main() {
    
    int n = 20;
    unsigned long long routes = binomialCoefficient(2 * n, n);

    cout << routes; 
    return 0;
}
```

Решение проблемы 16 представлено в файле [PowerDigitSum.hs](src/PowerDigitSum.hs)  
Решено было также 5 способами:

- Рекурсией (функция __recursionMethod__)
- Хвостовой рекурсией (функция __tailRecursionMethod__)
- Модульным со сверсткой и замыканием (функция __moduleMethod__)
- Генерация последовательности при помощи отображения (функция __mapMethod__)
- Используя кастомный map (функция __mapMethod__)

Решение на языке c++:

```c++
#include <iostream>
#include <cmath>
#include <string>

using namespace std;

int main() {

    string a = to_string(pow(2, 1000));
    long long result = 0;

    for (char digit : a) {
        result += digit - '0';
    }

    cout << result;
    return 0;
}

```
