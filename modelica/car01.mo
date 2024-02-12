model car01
  Modelica.Mechanics.Translational.Components.Vehicle vehicle(A = 0.5,J = 0, R = 0.25, m = 80, s(displayUnit = "m"), useCrInput = true, useInclinationInput = true, useWindInput = true, v(displayUnit = "m/s"))  annotation(
    Placement(visible = true, transformation(origin = {-10, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant w(k = 10)  annotation(
    Placement(visible = true, transformation(origin = {-27, -25}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant cr(k = 0.001)  annotation(
    Placement(visible = true, transformation(origin = {-35, -19}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant i(k = 0) annotation(
    Placement(visible = true, transformation(origin = {-45, -13}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Sources.Torque torque annotation(
    Placement(visible = true, transformation(origin = {-30, 14}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain(k = 100)  annotation(
    Placement(visible = true, transformation(origin = {-46, 14}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Examples.Noise.Utilities.ImpureRandom impureRandom(samplePeriod = 100)  annotation(
    Placement(visible = true, transformation(origin = {-64, 14}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
equation
  connect(i.y, vehicle.inclination) annotation(
    Line(points = {{-42, -13}, {-16, -13}, {-16, 2}}, color = {0, 0, 127}));
  connect(torque.flange, vehicle.flangeR) annotation(
    Line(points = {{-26, 14}, {-20, 14}}));
  connect(vehicle.cr, cr.y) annotation(
    Line(points = {{-10, 2}, {-10, -19}, {-32, -19}}, color = {0, 0, 127}));
  connect(w.y, vehicle.vWind) annotation(
    Line(points = {{-24, -24}, {-4, -24}, {-4, 2}}, color = {0, 0, 127}));
  connect(gain.y, torque.tau) annotation(
    Line(points = {{-42, 14}, {-34, 14}}, color = {0, 0, 127}));
  connect(impureRandom.y, gain.u) annotation(
    Line(points = {{-60, 14}, {-50, 14}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.0.0")),
    Diagram(coordinateSystem(extent = {{-80, 20}, {0, -40}})),
    version = "");
end car01;
