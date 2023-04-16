model HunterPray2
  constant Real a = 0.71;
  constant Real b = 0.046;
  constant Real c = 0.64;
  constant Real d = 0.017;
  Real t = time;
  Real x(t);
  Real y(t);
initial equation
  x = c / d;
  y = a / b;
equation
  der(x) = -a * x + b * x * y;
  der(y) = c * y - d * x * y;
  annotation(experiment(StartTime = 0, StopTime = 50, Interval = 0.05));
end HunterPray2;
