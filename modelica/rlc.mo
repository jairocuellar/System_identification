model rlc
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C(displayUnit = "uF") = 2.000000000000001e-05)  annotation(
    Placement(visible = true, transformation(origin = {-4, 36}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R(displayUnit = "Ohm") = 1000)  annotation(
    Placement(visible = true, transformation(origin = {-46, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 10, startTime = 0.15)  annotation(
    Placement(visible = true, transformation(origin = {-80, 28}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(resistor.p, stepVoltage.p) annotation(
    Line(points = {{-56, 60}, {-80, 60}, {-80, 38}}, color = {0, 0, 255}));
  connect(capacitor.n, stepVoltage.n) annotation(
    Line(points = {{-4, 26}, {-4, 6}, {-80, 6}, {-80, 18}}, color = {0, 0, 255}));
  connect(resistor.n, capacitor.p) annotation(
    Line(points = {{-36, 60}, {-4, 60}, {-4, 46}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end rlc;
