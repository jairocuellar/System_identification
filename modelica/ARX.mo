model ARX
  Modelica.Blocks.Continuous.TransferFunction transferFunction2(a = {2, 3, 9}, b = {6})  annotation(
    Placement(visible = true, transformation(origin = {-44, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-82, 14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add annotation(
    Placement(visible = true, transformation(origin = {-4, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Noise.BandLimitedWhiteNoise bandLimitedWhiteNoise(noisePower = 0.003, samplePeriod = 0.5, useAutomaticLocalSeed = true, useGlobalSeed = true)  annotation(
    Placement(visible = true, transformation(origin = {-58, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(transferFunction2.u, step.y) annotation(
    Line(points = {{-56, 14}, {-71, 14}}, color = {0, 0, 127}));
  connect(add.u2, transferFunction2.y) annotation(
    Line(points = {{-16, 14}, {-33, 14}}, color = {0, 0, 127}));
  connect(add.u1, bandLimitedWhiteNoise.y) annotation(
    Line(points = {{-16, 26}, {-24, 26}, {-24, 66}, {-46, 66}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end ARX;
