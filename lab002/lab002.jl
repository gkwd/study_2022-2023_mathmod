using Plots

# Расстояние от лодки до катера
const distance = 16.9
# Разница между скоростью
const diff = 4.7
# Траектория движения лодки браконьеров
const thetaPrayDeg = 270
# (Условно) шаг движения лодки озраников
const dTheta = 0.01
# Периуд 
const maxTheta = 4π

const cases = ["First", "Second"]

# Начало функции 
function F(theta)
    return r0 * exp.(theta / sqrt.(diff^2 - 1))
# Конец функции
end

# Рассмотрим два случая
for case in cases
    # Начальные значения
    global r0 = -1
    theta0 = -1

    #  Фурмулы из условия лабораторной работы
    if case=="First"
        r0 = distance / (diff + 1)
        theta0 = 0
    else
        r0 = distance / (diff - 1)
        theta0 = -π
    end

    # Конец разбияния на траектории 
    theta1 = theta0 + maxTheta
    # Строим рабиение от:шаг:до
    thetaHunt = theta0:dTheta:theta1
    # Радиус нашей добычи в радианах
    thetaPray = thetaPrayDeg * π / 180 + 2 * theta0

    # Строим график
    plt = plot(proj=:polar, aspect_ratio=:equal, dpi=500, title="Lab02" * case * "Case", legend=true)


    plot!(plt, [theta0, theta0], [distance, F(theta0)], label=false, color=:red)
    plot!(plt, thetaHunt, F, label=:"Траектория охраны" ,color=:red)
    plot!(plt, [0, thetaPray], [0, F(thetaPray) + 20], label=:"Траектория браконьеров", color=:green)

    plot!(plt, [theta0], [distance], seriestype=:scatter, label=:"Точка начала (охрана)", color=:red)
    plot!(plt, [0], [0], seriestype=:scatter, label=:"Точка начала (браконьеры)", color=:green)
    plot!(plt, [thetaPray], [F(thetaPray)], seriestype=:scatter, label=:"Точка пересечения", color=:blue)

    # Сохранение графика в виде изображения
    savefig(plt, "Lab02" * case * "Case.png")
end