Installation:

1. Move solar-system.widget to your widgets folder
2. Open index.coffee (TextEdit will work)
3. On the second line, make sure to change "USER" to your username/homefolder
4. Save and close
5. Enjoy!

Customization:

1. Moving widget
  a. Open index.coffee
  b. Find (style:""")
  c. There are six "#REPOSITION" comments nearby.
  d. Edit "top" and "left" inside the first two to move all of the planets.
  e. Edit "top" and "left" inside the middle two to move the sun.
  f. Edit "top" and "left" inside the last two to move the asteroid belt.
  g. Save and close

2. Adjusting size
  a. Open index.coffee
  b. Find (style:""")
  c. Edit the "height" property under any "planetPos" id to increase size of respective element
  d. If you edit any "height" properties, you must also edit "top:" and "left:" to each be half of the "height" value

3. Adjusting scale
  a. Open index.coffee
  b. Find "update: (output, domEl) ->"
  c. Adjust "scaleOuter" to change scale of outer four planets (Jupiter, Saturn, Uranus, and Neptune
  d. Adjust "scale" to change scale of all eight planets