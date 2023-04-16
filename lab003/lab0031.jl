using Plots
using DifferentialEquations

# Численность армий
const X = 61100
const Y = 45400

# константа, характеризующая степень влияния различных факторов на потери 
const a = 0.41
# эффективность боевых действий армии Y
const b = 0.89
# эффективность боевых действий армии X
const c = 0.52
# константа, характеризующая степень влияния различных факторов на потери
const h = 0.61

# возможность подхода подкрепления
const P(t) = sin.(t + 7) + 1 # X
const Q(t) = cos.(t + 6) + 1 # Y

# Начало
const t_start = 0
# Предельный момент времени
const t_end = 2.16

# Система диф. уравнений
function Battle!(df, u, p, t)
    df[1] = -a * u[1] - b * u[2] + P(t);
    df[2] = -c * u[1] - h * u[2] + Q(t);
end

# Вектор начальных условий
v0 = [X, Y]

tspan = (t_start, t_end)

# Решение системы
prob = ODEProblem(Battle!, v0, tspan)
sol = solve(prob)


plt = plot(sol,
           title="Модель боевых действий №1",
           dpi=500,
           label=["Армия №1" "Армия №2"],
           xlabel="Время (s)",
           ylabel="Численность")
savefig(plt, "lab0031_JL.png")