---
## Front matter
lang: ru-RU
title: Лабораторная работа №7
subtitle: Эффективность рекламы
author:  Ибрагимов Улугбек Ботырхонович
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
-   модель распространения рекламы.

## Цель

-   Рассмотреть модель распространения рекламы.
-   Построить данную модель средствами OpenModellica и Julia.

## Задачи

Построить график распространения рекламы, математическая модель которой описывается следующим уравнением

1. $\frac{dn}{dt} = (0.133 + 0.000033n(t))(N - n(t))$
2. $\frac{dn}{dt} = (0.0000132 + 0.32n(t))(N - n(t))$
3. $\frac{dn}{dt} = (0.8t + 0.15\sin(t)n(t))(N - n(t))$

При этом объем аудитории $N = 1670$, в начальный момент о товаре знает 12 человек. Для случая 2 определить в какой момент времени скорость распространения рекламы будет иметь максимальное значение.

## Материалы и методы

-   Julia, Pluto
-   Modelica, OMEdit

# Выполнение работы

## Julia. Cкрипт (1)

![Julia. Скрипт (1). Эффективность рекламы](pres-images/02.png)

## Julia. Cкрипт (2)

![Julia. Скрипт (2). Эффективность рекламы ($\alpha_1 = 0.133$, $\alpha_2 = 0.000033$)](pres-images/03.png)

## Julia. Модель(1)

:::::::::::::: {.columns align=center}
::: {.column width="33%"}

![Julia. Модель. Эффективность рекламы ($\alpha_1 = 0.133$, $\alpha_2 = 0.000033$)](pres-images/JL.lab07-01.png)
:::
::: {.column width="33%"}

![Julia. Модель. Эффективность рекламы ($\alpha_1 = 0.0000132$, $\alpha_2 = 0.32$)](pres-images/JL.lab07-02.png)
:::
::: {.column width="33%"}

![Julia. Модель. Эффективность рекламы ($\alpha_1 = 0.8$, $\alpha_2 = 0.15$)](pres-images/JL.lab07-03.png)

:::
::::::::::::::

## Modellica. Cкрипт

![Modelica. Скрипт. Эффективность рекламы ($\alpha_1 = 0.133$, $\alpha_2 = 0.000033$)](pres-images/06.png)

## Modellica. Модель (1)

:::::::::::::: {.columns align=center}
::: {.column width="33%"}

![Modelica. Модель. Эффективность рекламы ($\alpha_1 = 0.133$, $\alpha_2 = 0.000033$)](pres-images/MO.lab07-01.png)
:::
::: {.column width="33%"}

![Modelica. Модель. Эффективность рекламы ($\alpha_1 = 0.0000132$, $\alpha_2 = 0.32$)](pres-images/MO.lab07-02.png)
:::
::: {.column width="33%"}

![Modelica. Модель. Эффективность рекламы  ($\alpha_1 = 0.8$, $\alpha_2 = 0.15$)](pres-images/MO.lab07-03.png)

:::
::::::::::::::

# Результаты

## Итог

Мы улучшили практические навыки в области дифференциальных уравнений, улучшили навыки моделирования на Julia, а также навыки моделирования на OpenModelica. Изучили и построили модель распространения рекламы.

## {.standout}

Спасибо за внимание!
