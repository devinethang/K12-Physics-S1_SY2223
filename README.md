# K12-Physics-S1_SY2223

A collection of workbooks for Physics calculations

* Hardcover - [Physics: Problems and Solutions](https://www.amazon.com/gp/product/1601530552/)

## 1: Introduction to Physics

### 1.01: Semester Introduction

* PowerPoint: [A11Y_Physics_Course_Intro.pptx](1%20-%20Introduction%20to%20Physics/A11Y_Physics_Course_Intro.pptx)

* Workbook: [HS_PHX_references_and_equations_A11Y.docx](1%20-%20Introduction%20to%20Physics/HS_PHX_references_and_equations_A11Y.docx)

## 2: Physical Units and Measurement

### 2.01: The Metric System: History and Use

![Comparison of metric and English Conversions](2%20-%20Physical%20Units%20and%20Measurement/Comparison%20of%20metric%20and%20English%20Conversions.png)

```
Cubit Estimate Conversions:
1 cubit = 1.5 ft
1 cubit = 0.4572 m
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 1

### 2.02: The Metric System: Base Units

* International System of Units (SI) has seven base units.

![SI Basic Units.png](2%20-%20Physical%20Units%20and%20Measurement/SI%20Basic%20Units.png)

![SI Prefixes.png](2%20-%20Physical%20Units%20and%20Measurement/SI%20Prefixes.png)

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 2

### 2.08: Significant Figures

Rules regarding significant digits:

* Rule 1: All nonzero digits (1–9) are significant.

* Rule 2: Zeros between nonzero digits are significant.

* Rule 3: Zeros used solely as placeholders are not significant. These zeros include leading zeros in front of a number or trailing zeros (those to the right of a nonzero digit) when there is no decimal point.

* Rule 4: All trailing zeros are significant if there is a decimal point in the number.

* Rule 5: Counted numbers have an infinite number of significant digits because there is no uncertainty in them.

* Rule 6: For numbers written in scientific notation, all digits are significant.

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 6

## 7: Motion in Two Dimensions

### 7.01: Projectile Motion

* Workbook: [7-01 - Projectile Motion.xlsx](7%20-%20Motion%20In%20Two%20Dimensions/7-01%20-%20Projectile%20Motion.xlsx)

#### Unit Questions:

* A boy throws a stone horizontally with a velocity of +20 m/s from the top of a cliff that is 44 m high. How long does it take the stone to reach the ground? What will the range of the stone be?

```js
let h = 44; // m
let v = 20; // m/s
let g = -9.81; // m/s^2
let t = Math.sqrt(2*h/Math.abs(g)); // s
let d = v * t; // m
console.log('Drop time=', t, 's');
// Drop time= 2.9965967090575756 s
console.log('Distance=', d, 'm');
// Distance= 59.93193418115151 m
```

* A boy throws a stone with a velocity of +20.0 m/s at an angle of 30°. How long does it take the stone to hit the ground? How far will the stone have traveled when it hits the ground? How high will it go?

```js
let v = 20; // m/s
let angle = 30; // degrees
let theta = angle / 180 * Math.PI; // radians
let g = -9.81; // m/s^2
let Vx = v*Math.cos(theta); // m/s
let Vy = v*Math.sin(theta); // m/s
let t = Math.abs(2*Vy/g); // s
console.log('Drop time=', t, 's');
// Drop time= 2.040816326530612 s
let Xmax = Vx*(t); // m
console.log('Xmax=', Xmax, 'm');
// Xmax= 35.34797566467096 m
let Ymax = Vy*(t/2)+0.5*g*Math.pow(t/2, 2); // m, where t/2 is the max height
console.log('Ymax=', Ymax, 'm');
// Ymax= 5.102040816326529 m
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 30


### 7.02: Uniform Circular Motion

* Workbook: [7-02 - Uniform Circular Motion.xlsx](7%20-%20Motion%20In%20Two%20Dimensions/7-02%20-%20Uniform%20Circular%20Motion.xlsx)

#### Unit Questions:

* A 70.0 kg man stands on the edge of a merry-go-round with a radius of 5.0 m. He is moving with a uniform velocity of 2.0 m/s. What is his centripetal acceleration? What is the magnitude of the centripetal force that acts on him?

```js
let m = 70.0; // kg
let v = 2.0; // m/s
let r = 5.0; // m
let Ac = Math.pow(v, 2)/r; // m/s^2
console.log('Centripetal Acceleration', 'Ac=', Ac, 'm/s^2');
// Centripetal Acceleration Ac= 0.8 m/s^2
let Fc = m * Ac; // N
console.log('Centripetal Force', 'Fc=', Fc, 'N');
// Centripetal Force Fc= 56 N
```

* A 0.015 kg rubber stopper is attached to a 1.00 m string and swung overhead in a circle to make one revolution in 1.50 s.

```
Find the following:
• Velocity of the stopper
• Centripetal acceleration of the stopper
• Centripetal force exerted by the string on the stopper
```

```js
let m = 0.015; // kg
let r = 1.00; // m
let t = 1.50; // s
let v = 2 * Math.PI * r / t; // m/s
console.log('Velocity', 'v=', v, 'm/s');
// Velocity v= 4.1887902047863905 m/s
let Ac = Math.pow(v, 2)/r; // m/s^2
console.log('Centripetal Acceleration', 'Ac=', Ac, 'm/s^2');
// Centripetal Acceleration Ac= 17.54596337971441 m/s^2
let Fc = m * Ac; // N
console.log('Centripetal Force', 'Fc=', Fc, 'N');
// Centripetal Force Fc= 0.26318945069571614 N
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 31

### 7.06: Angular Displacement and Torque

* Workbook: [7-06 - Angular Displacement and Torque.xlsx](7%20-%20Motion%20In%20Two%20Dimensions/7-06%20-%20Angular%20Displacement%20and%20Torque.xlsx)

#### Unit Questions:

* How do you measure the `distance` of a rotating wheel, given the displacement and radius?

```js
let s = 25.0; // cm
let r = 10; // cm
let theta = s/r;
console.log('Displacement', 's=', s, 'cm');
// Displacement s= 25 cm
console.log('Radius', 'r=', r, 'cm');
// Radius r= 10 cm
console.log('Distance', 'theta=', theta, 'radians');
// Distance theta= 2.5 radians
```

* How do you measure the `displacement` of a rotating wheel, given the distance and radius?

```js
let theta = 2.5; // radians
let r = 10; // cm
let s = theta * r; // cm
console.log('Distance', 'theta=', theta, 'radians');
// Distance theta= 2.5 radians
console.log('Radius', 'r=', r, 'cm');
// Radius r= 10 cm
console.log('Displacement', 's=', s, 'cm');
// Displacement s= 25 cm
```

* How do you measure the `radius` of a rotating wheel, given the displacement and distance?

```js
let theta = 2.5; // radians
let s = 25.0; // cm
let r = s / theta; // cm
console.log('Displacement', 's=', s, 'cm');
// Displacement s= 25 cm
console.log('Distance', 'theta=', theta, 'radians');
// Distance theta= 2.5 radians
console.log('Radius', 'r=', r, 'cm');
// Radius r= 10 cm
```

* A centrifuge rotor accelerates from rest to 20,000 rpm in 2 minutes. What is the angular acceleration?

```js
let Irpm = 0; // rad/s        Initial RPM
let Frpm = 20000; // rpm      Final RPM
let Tmin = 2; // min            Angular acceleration
let Wi = Irpm * 2 * Math.PI / 60; // rad/s
let Wf = Frpm * 2 * Math.PI / 60; // rad/s
let Tsec = TMin * 60; // s
let Dw = Wf - Wi; // rad/s
let alpha = Dw / Tsec; // rad/s^2
console.log('Angular Acceleration', alpha, 'rad/s^2');
// Angular Acceleration 17.453292519943297 radians
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 32

### 7.07: Simple Harmonic Motion in Springs

* Workbook: [7-07 - Simple Harmonic Motion in Springs.xlsx](7%20-%20Motion%20In%20Two%20Dimensions/7-07%20-%20Simple%20Harmonic%20Motion%20in%20Springs.xlsx)

#### Unit Questions:

* A screen door spring has a k of 250 N/m. What tension (force) will it apply to the door when the door is opened by –0.50 meters?

```js
let x = -0.5; // m
let k = 250; // N/m
let F = -k * Math.abs(x); // N
console.log('F=', F, 'N');
// F= -125 N
```

* A 0.020 kg insect gets caught in a spider web and causes the web to vibrate with a frequency of 10.0 Hz. What is the spring constant of the spider web?

```js
let m = 0.020; // kg
let f = 10.0; // Hz
let T = 1 / f; // s
console.log('T=', T, 's');
// T= 0.1 s
let k = 4 * Math.pow(Math.PI, 2) * m / Math.pow(T, 2);
console.log('k=', k, 'N/m');
// k= 78.95683520871485 N/m
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 33

### 7.08: Simple Harmonic Motion in Pendulums

* Workbook: [7-08 - Simple Harmonic Motion in Pendulums.xlsx](7%20-%20Motion%20In%20Two%20Dimensions/7-08%20-%20Simple%20Harmonic%20Motion%20in%20Pendulums.xlsx)

#### Unit Questions:

* What is the period and frequency of a pendulum whose string length is 0.30 m, whose bob mass is 0.20 kg, and that is displaced by an angle of 10°?

```js
let m = 0.2; // kg
let L = 0.30; // m
let angle = 10; // degrees
let theta = angle / 180 * Math.PI; // radians
let g = -9.81; // m/s^2
let T = 2 * Math.PI * Math.sqrt(L / Math.abs(g)); // s
console.log('Period', 'T=', T, 's');
// Period T= 1.0987679728847353 s
let f = 1 / T; // Hz
console.log('Frequency', 'f=', f, 'Hz');
// Frequency f= 0.9101102550109582 Hz
```

* For a pendulum moving in SHM with a frequency of 1.0 Hz, what is the length of the string?

```js
let f = 1.0; // Hz
let g = -9.81; // m/s^2
let T = 1 / f; // s
console.log('Period', 'T=', T, 's');
// Period T= 1 s
let L = Math.abs(g) * Math.pow(T, 2) / 4 / Math.pow(Math.PI, 2); // m
console.log('L=', L, 'm');
// L= 0.24823689992372758 m
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 34

### 8.01: History of Gravitation

* Workbook: [8-01 - History of Gravitation.xlsx](8%20-%20Gravitation/8-01%20-%20History%20of%20Gravitation.xlsx)

#### Unit Questions:

* Suppose Satellite B is in orbit 3.0 times as far from the earth's center as Satellite A. How are their orbital periods—the times to orbit the earth—related?

```js
let Db = 3.0; 
let Da = 1.0;
let Tb = Math.sqrt(Math.pow(Db, 3));
console.log('Tb=', Tb);
// Tb= 5.196152422706632
let Ta = Math.sqrt(Math.pow(Da, 3));
console.log('Ta=', Ta);
// Ta= 1
let ratio = Tb/Ta;
console.log('ratio=', ratio);
// ratio= 5.196152422706632
```

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 35

### 8.04 - Universal Gravitation

* Workbook: [8-04 - Universal Gravitation.xlsx](8%20-%20Gravitation/8-04%20-%20Universal%20Gravitation.xlsx)

#### Unit Questions:

* A planet is found to be 2.5 times as far from the sun as the earth. How long would it take to go around the sun?

* Find the force of gravity between two 80.0 kg people when they are 1.00 meter apart from their centers.

* What is the distance from the center of the earth to the surface? Assume the mass of the earth is 5.98×10^24 kg and use an 80.0 kg person standing at the surface to find any unknown values.

* Typically, a space shuttle orbits 300.0 km above the earth’s surface. What velocity must be maintained so that it remains in a circular orbit? Assume that the mass of a space shuttle is 2.03×10^6 kg and the radius of the earth is 6.38×10^6 m.

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 36

### 8.05: Einstein and the Gravitational Field

* Workbook: [8-05 - Einstein and the Gravitational Field.xlsx](8%20-%20Gravitation/8-05%20-%20Einstein%20and%20the%20Gravitational%20Field.xlsx)

#### Unit Questions:

* Calculate the strength of the earth’s gravitational field near sea level from Newton’s law of universal gravitation and then calculate it at a distance twice as far from the center of the earth.

#### Problem Set

* "Physics: Problems and Solutions" - Problem Set 37

### 9: Semester Review and Test

Workbook: [9-01 - Semester Review.xlsx](9%20-%20Semester%20Review%20and%20Test/9-01%20-%20Semester%20Review.xlsx)

#### Unit Questions:

* How many meters are there in 28 cm?

* Check if your calculation of the speed of a falling rock as it hits the ground is reasonable. The rock fell 11.0 m in 1.50 s, and you calculate it had a speed of 14.7 m/s.

* Given a friction force of 1.10 N, how fast is a 0.510 kg book moving in 0.50 s if it starts from rest and you apply a force of 2.00 N in a straight line?

* A 50.0 kg skater pushes a 65 kg skater with a force of 40.0 N for 1.1 s on a frictionless surface. Find the acceleration and the magnitude of the final velocity of each skater.

* A book with a mass of 0.55 kg rests on a table. The coefficient of static friction for the two surfaces in contact is 0.35. A horizontal force of +0.45 N is applied. Does the book move? How strong a horizontal force can be applied to the book before it moves?

* A boy throws a stone horizontally with a velocity of +20 m/s from the top of a cliff that is 44 m high. How long does it take the stone to reach the ground? What will the range of the stone be?

* A 0.020 kg insect gets caught in a spider web and causes it to vibrate with a frequency of 10.0 Hz. What is the spring constant of the spider web?
