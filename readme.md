# Dam break cases (for OF v8)

## 2D
### laminar model
![](./laminar_2D/animation/output.gif)
### turbulence model
![](./turbulence_2D/animation/output.gif)

## 3D
### laminar model
![](./laminar_3D/animation/output.gif)
### turbulence model
![](./turbulence_3D/animation/output.gif)

# Changes for OF 2016
In `controlDict`:
```Openfoam
// OpenFOAM v8
     gaugesSurge
     {
         type    sets;
         libs ("libsampling.so");
         writeControl    outputTime;
         writeInterval   1;
         setFormat       raw;
         surfaceFormat   raw;
         interpolationScheme cell;
         outputControl   timeStep;
         outputInterval  1;
         fields          ( alpha.water );
         sets
         (
             GaugeVOF01
             {
                 type    lineCellFace;
                 axis    xyz;
                 start   (0 0.075 0);
                 end     (1.610 0.075 0);
             }
         );
     } 

```

to
```Openfoam
// OpenFOAM v2016
     gaugesSurge
     {
         type    sets;
         libs ("libsampling.so");
         writeControl    outputTime;
         writeInterval   1;
         setFormat       raw;
         surfaceFormat   raw;
         interpolationScheme cell;
         outputControl   timeStep;
         outputInterval  1;
         fields          ( alpha.water );
         sets
         (
             GaugeVOF01
             {
                 type    midPoint;
                 axis    xyz;
                 start   (0 0.075 0);
                 end     (1.610 0.075 0);
             }
         );
     } 

```