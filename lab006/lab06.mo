model Hazard
  constant Real alpha = 0.40;
  constant Real beta = 0.60;
  constant Integer N = 4289;
  // constant Integer I_crit = 64;
  constant Integer I_crit = 128;
  
  Real t = time;
  Real S(t);
  Real I(t);
  Real R(t);
initial equation
  I = 82;
  R = 15;
  S = N - I - R;
equation
  if I > I_crit then
    der(S) = - alpha * S;
    der(I) = alpha * S - beta * I;
  else
    der(S) = 0;
    der(I) = - beta * I; 
  end if;
  der(R) = beta * I;
  annotation(experiment(StartTime = 0, StopTime = 30, Interval = 0.05));
end Hazard;
