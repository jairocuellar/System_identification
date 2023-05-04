model clase09
  Modelica.Blocks.Continuous.TransferFunction G(a = {1, 3, 10, 20}, b = {20}, y_start = 0)  annotation(
    Placement(visible = true, transformation(origin = {-44, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Examples.Noise.Utilities.ImpureRandom impureRandom(samplePeriod = 20)  annotation(
    Placement(visible = true, transformation(origin = {-80, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Discrete.TransferFunction G_dt(a = {1, -2.654, 2.344, -0.6859}, b = {0.0003116, 0.001717, 0.002542}, samplePeriod = 0.05)  annotation(
    Placement(visible = true, transformation(origin = {-44, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(impureRandom.y, G.u) annotation(
    Line(points = {{-68, 26}, {-56, 26}}, color = {0, 0, 127}));
  connect(G_dt.u, impureRandom.y) annotation(
    Line(points = {{-56, -8}, {-68, -8}, {-68, 26}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end clase09;
