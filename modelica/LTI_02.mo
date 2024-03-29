model LTI_02
  Modelica.Mechanics.Translational.Components.Mass mass(m = 2)  annotation(
    Placement(visible = true, transformation(origin = {0, 28}, extent = {{30, -10}, {50, 10}}, rotation = 0)));
  Modelica.Blocks.Examples.Noise.Utilities.ImpureRandom impureRandom(samplePeriod = 5) annotation(
    Placement(visible = true, transformation(origin = {-74, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add(k1 = +2, k2 = -1) annotation(
    Placement(visible = true, transformation(origin = {-42, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 1) annotation(
    Placement(visible = true, transformation(origin = {-74, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Sources.Force force annotation(
    Placement(visible = true, transformation(origin = {-6, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.SpringDamper springDamper(c = 4, d = 2)  annotation(
    Placement(visible = true, transformation(origin = {72, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {92, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(impureRandom.y, add.u1) annotation(
    Line(points = {{-63, 44}, {-58, 44}, {-58, 34}, {-54, 34}}, color = {0, 0, 127}));
  connect(const.y, add.u2) annotation(
    Line(points = {{-63, 18}, {-60, 18}, {-60, 22}, {-54, 22}}, color = {0, 0, 127}));
  connect(add.y, force.f) annotation(
    Line(points = {{-31, 28}, {-19, 28}}, color = {0, 0, 127}));
  connect(force.flange, mass.flange_a) annotation(
    Line(points = {{4, 28}, {30, 28}}, color = {0, 127, 0}));
  connect(mass.flange_b, springDamper.flange_a) annotation(
    Line(points = {{50, 28}, {62, 28}}, color = {0, 127, 0}));
  connect(springDamper.flange_b, fixed.flange) annotation(
    Line(points = {{82, 28}, {92, 28}, {92, 12}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end LTI_02;
