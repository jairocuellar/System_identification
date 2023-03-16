model lab1
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = 10)  annotation(
    Placement(visible = true, transformation(origin = {-26, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 0.001)  annotation(
    Placement(visible = true, transformation(origin = {16, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(visible = true, transformation(origin = {56, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(V = 50, f = 60)  annotation(
    Placement(visible = true, transformation(origin = {-76, 6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-76, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(sineVoltage.p, resistor.p) annotation(
    Line(points = {{-76, 16}, {-36, 16}, {-36, 32}}, color = {0, 0, 255}));
  connect(resistor.n, capacitor.p) annotation(
    Line(points = {{-16, 32}, {6, 32}, {6, 36}}, color = {0, 0, 255}));
  connect(capacitor.n, ground.p) annotation(
    Line(points = {{26, 36}, {56, 36}, {56, -4}}, color = {0, 0, 255}));
  connect(ground1.p, sineVoltage.n) annotation(
    Line(points = {{-76, -10}, {-76, -4}}, color = {0, 0, 255}));

annotation(
    uses(Modelica(version = "4.0.0")));
end lab1;
