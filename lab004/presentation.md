---
## Front matter
lang: ru-RU
title: Лабораторная работа №4
subtitle: Модель гармонических колебаний
author: Ибрагимов Улугбек Ботырхонович
institute: Российский университет дружбы народов, Москва, Россия

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
    - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
    - '\makeatletter'
    - '\beamer@ignorenonframefalse'
    - '\makeatother'
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

-   Ибрагимов Улугбек Ботырхонович
-   НФИбд-02-20
-   1032204510
-   Российский Университет Дружбы Народов
-   [1032204510@pfur.ru](mailto:1032204510@pfur.ru)
-   <https://github.com/gkwd>

:::
::: {.column width="30%"}

:::
::::::::::::::

# Вводная часть

## Актуальность

-   Приобрести необхдимые в современном научном сообществе навыки моделирования задач.
-   Освоить средства моделирования, такие как Julia и OpenModelica

## Объект и предмет исследования

-   Язык программирования Julia
-   OpenModelica
-   Гармонические колебания

## Цель

-   Рассмотреть уравнение гармонических колебаний.
-   Смоделировать уравнение гармонических колебаний средствами OpenModellica и Julia.

## Задачи

Построить фазовый портрет гармонического осциллятора и решение уравнения гармонического осциллятора для следующих случаев

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы $\dot x + 3.3x = 0$.

2. Колебания гармонического осциллятора c затуханием и без действий внешней силы $\ddot x + 3\dot x + 0.3x = 0$.

3. Колебания гармонического осциллятора c затуханием и под действием внешней силы $\ddot x + 3.3\dot x + 0.3x = 3.3\sin(3t)$.

На интервале $t \in [0; 33]$ (шаг $0.05$) с начальными условиями $x_0 = 1.3, \ y_0 = 0.3$.

## Материалы и методы

-   Язык программирования Julia
-   OpenModelica

# Выполнение работы

## Julia. Pluto.

![Julia. Запуск Pluto](image/01.png)

## Julia. Cкрипт (1)

![Julia. Начало написания скрипта для моделирование колебания гармонического осциллятора](image/02.png){ width=70%}

## Julia. Cкрипт (2)

![Julia. Скрипт. Колебания гармонического осциллятора с затуханием и под действием внешней силы](image/05.png){ width=50%}

## Julia. Модель (1)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Julia. Модель. Решение уравнения гармонического осциллятора без затуханий и без действий внешней силы](image/JL.lab04-010.png)

:::
::: {.column width="50%"}

![Julia. Модель. Фазовый портрет осциллятора без затуханий и без действий внешней силы](image/JL.lab04-011.png)

:::
::::::::::::::

## Julia. Модель (2)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Julia. Модель. Решение уравнения гармонического осциллятора с затуханием и без действий внешней силы](image/JL.lab04-020.png)

:::
::: {.column width="50%"}

![Julia. Модель. Фазовый портрет осциллятора с затуханием и без действий внешней силы](image/JL.lab04-021.png)

:::
::::::::::::::

## Julia. Модель (3)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Julia. Модель. Решение уравнения гармонического осциллятора с затуханием и под действием внешней силы](image/JL.lab04-030.png)

:::
::: {.column width="50%"}

![Julia. Модель. Фазовый портрет осциллятора с затуханием и под действием внешней силы](image/JL.lab04-031.png)

:::
::::::::::::::

## Modellica. Cкрипт

![Modelica. Скрипт. Колебания гармонического осциллятора с затуханием и под действием внешней силы](image/08.png)

## Modellica. Модель (1)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Modelica. Модель. Решение уравнения гармонического осциллятора без затуханий и без действий внешней силы](image/MO.lab04-010.png)

:::
::: {.column width="50%"}

![Modelica. Модель. Фазовый портрет осциллятора без затуханий и без действий внешней силы](image/MO.lab04-011.png)

:::
::::::::::::::

## Modellica. Модель (2)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Modelica. Модель. Решение уравнения гармонического осциллятора с затуханием и без действий внешней силы](image/MO.lab04-020.png)

:::
::: {.column width="50%"}

![Modelica. Модель. Фазовый портрет осциллятора с затуханием и без действий внешней силы](image/MO.lab04-021.png)

:::
::::::::::::::

## Modellica. Модель (3)

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![Modelica. Модель. Решение уравнения гармонического осциллятора с затуханием и под действием внешней силы](image/MO.lab04-030.png)

:::
::: {.column width="50%"}

![Modelica. Модель. Фазовый портрет осциллятора с затуханием и без под действием внешней силы](image/MO.lab04-031.png)

:::
::::::::::::::

# Результаты

## Итог

Мы улучшили практические навыки в области дифференциальных уравнений, улучшили навыки моделирования на Julia, также приобрели навыки моделирования на OpenModelica. Изучили модель rолебания гармонического осциллятора. Научились строить фазовые портреты.

## {.standout}

Спасибо за внимание!
