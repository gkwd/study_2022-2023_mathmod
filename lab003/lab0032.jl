using Plots
using DifferentialEquations


# Численность армий
const X = 61100
const Y = 45400

# константа, характеризующая степень влияния различных факторов на потери 
const a = 0.37
# эффективность боевых действий армии Y
const b = 0.675
# эффективность боевых действий армии X
const c = 0.432
# константа, характеризующая степень влияния различных факторов на потери
const h = 0.42

const P(t) = abs.(2 * sin.(t))
const Q(t) = cos.(t) + 2

const t_start = 0
const t_end = 0.001


function Battle!(df, u, p, t)
    df[1] = -a * u[1] - b * u[2] + P(t);
    df[2] = -c * u[1] * u[2] - h * u[2] + Q(t);
end


u0 = [X, Y]
tspan = (t_start, t_end)
prob = ODEProblem(Battle!, u0, tspan)
sol = solve(prob)

plt = plot(sol, 
           title="Модель боевых действий №2",
           dpi=500,
           label=["Армия №1" "Армия №2"],
           xlabel="Время (s)",
           ylabel="Численность",
           legend=:outertop)
savefig(plt, "lab0032_JL.png")