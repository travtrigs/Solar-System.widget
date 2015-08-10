#CHANGE "USER" TO YOUR USERNAME/HOMEFOLDER!!!
command: "cd '/Users/USER/Library/Application\ Support/Übersicht/widgets/solar-system.widget/' && ./script.sh"

refreshFrequency: 86400000

render: ->"""
<div id="sunPos"><img id="sun" src="solar-system.widget/Sun.png"/></div>
<div id="asteroidsPos"><img id="asteroids" src="solar-system.widget/Asteroids.png"/></div>
<div id="mercuryPos"><img id="mercury" src="solar-system.widget/Mercury.png"/></div>
<div id="venusPos"><img id="venus" src="solar-system.widget/Venus.png"/></div>
<div id="earthPos"><img id="earth" src="solar-system.widget/Earth.png"/></div>
<div id="marsPos"><img id="mars" src="solar-system.widget/Mars.png"/></div>
<div id="jupiterPos"><img id="jupiter" src="solar-system.widget/Jupiter.png"/></div>
<div id="saturnPos"><img id="saturn" src="solar-system.widget/Saturn.png"/></div>
<div id="uranusPos"><img id="uranus" src="solar-system.widget/Uranus.png"/></div>
<div id="neptunePos"><img id="neptune" src="solar-system.widget/Neptune.png"/></div>
"""

update: (output, domEl) ->
  #Adjust this to change the scale of the outer 4 planets (Jupiter, Saturn, Uranus, Neptune)
  scaleOuter = .45

  #Adjust this to change the scale of all planets
  scale = 23

  rows = output.split("\n")
  x = [8]
  y = [8]
  for row, i in rows
    x[i] = row.split(" ")[0]
    y[i] = row.split(" ")[1]

  for i in [4,5,6,7]
    x[i] = x[i] * scaleOuter
    y[i] = y[i] * scaleOuter

  @planets =
    mercuryPos: 0
    venusPos: 1
    earthPos: 2
    marsPos: 3
    jupiterPos: 4
    saturnPos: 5
    uranusPos: 6
    neptunePos: 7

  for planet, i of @planets
    $("##{planet}").css transform: "translate(#{x[i]*scale}px,#{-y[i]*scale}px)"

    #REPOSITION
    $("##{planet}").css top: "400px"
    $("##{planet}").css left: "400px"
    #REPOSITION

style:"""
  //Adjust any "height" property to increase size of respective element
  //Make sure corresponding "top:" and "left:" properties are half of what you set for height

  #sunPos
    position: fixed

    //REPOSITION
    top: 400px
    left: 400px
    //REPOSITION
  #sun
    position: absolute
    top: -3px
    left: -3px
    height: 6px

  #asteroidsPos
    position: fixed
    
    //REPOSITION
    top: 400px
    left: 400px
    //REPOSITION
  #asteroids
    position: absolute
    top: -45px
    left: -45px
    height: 90px

  #mercuryPos
    position: fixed
  #mercury
    position: absolute
    top: -3px
    left: -3px
    height: 6px

  #venusPos
    position: fixed
  #venus
    position: absolute
    top: -3px
    left: -3px
    height: 6px

  #earthPos
    position: fixed
  #earth
    position: absolute
    top: -3px
    left: -3px
    height: 6px
    
  #marsPos
    position: fixed
  #mars
    position: absolute
    left: -3px
    top: -3px
    height: 6px

  #jupiterPos
    position: fixed
  #jupiter
    position: absolute
    left: -3px
    top: -3px
    height: 6px

  #saturnPos
    position: fixed
  #saturn
    position: absolute
    left: -3px
    top: -3px
    height: 6px

  #uranusPos
    position: fixed
  #uranus
    position: absolute
    left: -3px
    top: -3px
    height: 6px

  #neptunePos
    position: fixed
  #neptune
    position: absolute
    left: -3px
    top: -3px
    height: 6px
"""