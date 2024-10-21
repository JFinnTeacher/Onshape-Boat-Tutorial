#import "template.typ": *
#import "@preview/oasis-align:0.1.0": *
#import "@preview/wrap-it:0.1.0": wrap-content
#import "callouts.typ": *
// #import "@preview/babble-bubbles:0.1.0": *


#show: project.with(
  title: "How to Make a Model Boat in Onshape", // make, model, version + procedure + context
  authors: "Jason Daniel Pieck",
  affiliations: "UWP 102E A03"
  
)

/** 
- 4 to 5 whole pages
- 8 to 15 steps (should be linear and non-branching)
- Techical procedure to someone with 0 background knowledge
- can be chatper of manual 
**/

= Introduction
/*
- hook: someone without background to do x (what this is about )
  - make, model, version, procedure, context, no background, knowlege
- X should be particular
- about 1.5 pages
- context
*/
// story: give me a tour of the place, and then Im ready to start


Ahoy there, and welcome to Cyclone RobSub! 
// We are thrilled to have you with us!

As part of the team's training regimen, you and your team will be asked to design, model, assemble, wire, and program a small model boat. The primary goal of this document is to familiarize yourself with the fundamentals of computer aided design (CAD) design in Onshape. No prior experience in any CAD software is required to follow along. By the end of the tutorial, you will have created a model boat like the one seen in @overview that you and your team are encouraged to build off of.

#figure(image("images/overview.png"), caption: []) <overview>
//highlight


== Overview
The area in which you view your model is called the "Graphics Area". If you select a part of the model, you will see that a corresponding "Feature" will be highlighted in the "Feature List" on the left side of the window. The Feature List keeps a history of every operation you have performed, and allows you to go back and make changes to earlier states of the model. To add to the feature list, you can select actions on the "toolbar" at the top of the window. 
Dialog





== Tools & Materials
// Teach the reader terms and concepts to do steps
// Where do I get this stuff
// visual should be of tools/equipment 


As mentioned before, this tutorial utilizes the CAD software Onshape. Before beginning this tutorial, create an account at #link("https://www.onshape.com/en/education")[onshape.com/en/education]. Using this link gives you access to the free education version of Onshape. 

If you would like to follow along in a different CAD software, bear in mind that the user interface and button names may differ from OnShape. That said, the operations utilized this tutorial are very conventional and generally exist in all CAD software.

== Roadmap
// Roadmap sentence: 3 main elements of the procedure
You will start by first making the basic shape of a boat, and then slowly carve away at it to refine shape that is more aerodynamic and can be propelled through the water.


== Warnings
CAD is powerful because of the wider verities of ways that modeling challenges can be approached. As a result, it is impossible for this tutorial to be fully comprehensive. Bearing that in mind, this tutorial will be focused on only one method to achieve the desired shape. If you are interested in alternatives, I highly recommend you check out the wider verity of resources available online.


= Procedure
/** 
Options:
- Tabular: text on one side of table, image on the other
  - images should be dynamic (images of action)
- Freeform: whatever goes
  - careful about getting readers lost
- Combo

Make sure that steps are:
- Command form ("Do this")
- include suplementary explainations
**/

// #box(image("images/sketch-button.png"))
// #figure(image("images/sketch.png"), caption: []) <sketch>])

== 1 - Starting Your first Sketch
#oasis-align(int-dir: -1, 
[The first thing that we need to do whenever making a model in CAD is making a sketch. 
// A sketch is a 2D stucture that exists on a plane. 
To make your first sketch, click the `Sketch` button on the left side of the tool bar. 

Onshape will then prompt you to select a plane. Select the top plane by either clicking on the plane in the view-window or on the feature tree as seen in @select-plane. 
],
[#figure(image("images/select-plane.png"), caption: []) <select-plane>
])
It is best practice to be looking directly at the plane you are working on, so navigate to the view-finder at the top right of the screen and click on the `Top` surface. This will reorient your view-window such that you now face the top plane directly head on. 
// [#figure(image("images/view-finder.png"), caption: []) <view-finder>
// ])
== 2 - Sketching base of the boat contour

#oasis-align([Select the `Center point rectangle` tool from the rectangle tools dropdown as seen in @rect-tool. After selecting, your tool should change in a cross-hair shaped like a plus sign.


Click on the origin point and then move your mouse outwards as seen in @rect-sketch. At this point in time, it does not matter how far out you go, nor that the numbers that you see in @rect-sketch match your own. ],

[#figure(image("images/rect-tool.png"), caption: []) <rect-tool>
])

#oasis-align([#figure(image("images/rect-sketch.png"), caption: [], ) <rect-sketch>
],
[#warning[Failing to select the origin point when starting the sketch will result an under-defined sketch that does not align with the default geometry of the model. This can cause issues later down the line in more complex models, and should be avoided whenever possible.]

Now that we have shape, we can add dimensions. Select the `Dimension` tool from the right side of the toolbar. Your mouse should once again change to a cross-hair. Click on the left side of the rectangle, and then click off to the side as seen in @rect-dim.])



#oasis-align(int-dir: -1,
  [Instead of adding another dimension, create `Equal`between two perpendicular sides of the rectangle. While selecting, hold `Shift` on your keyboard select `Equal` as show in @rect-equal. Now if we change the dimension set earlier, all sides of the square will change size automatically. 
  ],
  [#oasis-align(
    [#figure(image("images/rect-dim.png"), caption: []) <rect-dim>],
    [#figure(image("images/rect-equal.png"), caption: []) <rect-equal>
  ])]
)

== 3 - Sketching the front of the boat contour 

Using the `Circle` tool, add two circle to your the top corners of your sketch as seen in @double-circle. When selecting the size of the circle, line up your cursor with the opposite opposite sided corner. As you get close, the line will change colors to orange and the icon for `Tangent` will appear. The icon signifies that Onshape is automatically adding a relation to the sketch. If done correctly, the circle will appear black in color. 

Select the cutting tool, and click and drag your mouse of the sections of the circle as signified in @trim-tool. Once you are finished, your sketch should look like @finish-boat-contour. Select the green check mark, and your sketch is finished!

#oasis-align([#oasis-align([#figure(image("images/double-circle.png"), caption: []) <double-circle>
],[#figure(image("images/trim-tool.png"), caption: []) <trim-tool>])],
[#figure(image("images/finish-boat-contour.png"), caption: []) <finish-boat-contour>])

// #note[The trim tool is a great way to remove unwanted geometry from a sketch.]

== 4 - Extruding the Sketch



= Conclusion
/** 
- Move beyond congrats
- Maintence
- Troubleshooting
**/