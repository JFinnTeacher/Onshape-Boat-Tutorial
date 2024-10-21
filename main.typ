#import "template.typ": *
#import "@preview/oasis-align:0.1.0": *
#import "@preview/wrap-it:0.1.0": wrap-content
#import "callouts.typ": *
// #import "@preview/babble-bubbles:0.1.0": *


#show: project.with(
  title: "Making Your Fist Boat in Onshape", // make, model, version + procedure + context
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


Ahoy there, and welcome to Cyclone RobSub! We are thrilled to have you with us!

As part of our training regimen, you and your team will be asked to design, model, assemble, wire, and program a small model boat. This document covers the modeling portion of your training. No prior experience in any CAD software is required to follow along.

In this document, you will be guided through the process of creating a sample boat that you are encouraged to build upon for your teams design. The primary goal of this document is to familiarize yourself with the fundamentals of CAD design in OnShape.



/*
- hook: someone without background to do x (what this is about )
- X should be particular
- about 1.5 pages
- context
*/
// Hook: make, model, version, procedure, context, no background, knowlege

// story: give me a tour of the place, and then Im ready to start

// Teach the reader terms and concepts to do steps
#figure(image("images/overview.png"), caption: [caption of the static figure])
== Roadmap
// Roadmap sentence: 3 main elements of the procedure

// #grid(columns: (1fr, 1fr), note[fsdfsdfsdfs])
== Warnings
== Tools & Materials
// visual should be of tools/equipment 
// Where do I get this stuff
// #image("circle-alert.svg", width: 3in)

= Steps
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

== Step 1 - Starting Your first Sketch
The first thing that we need to do whenever making a model in CAD is making a sketch. A sketch is a 2D stucture that exists on a plane. 

To make your first sketch, click the `Sketch` button in the tool bar as seen in @sketch. 

#figure(image("images/sketch.png"), caption: []) <sketch>

Onshape will then prompt you to select a plane. Select the top plane by either clicking on the plane in the view-window or on the feature tree as seen in @select-plane. 

#figure(image("images/select-plane.png")) <select-plane>

It is best practice to be looking directly at the plane you are working on, so navigate to the view-finder as seen in @view-finder and click on the `Top` surface. This will reorient your view-window such that you now face the top plane directly head on. 

#figure(image("images/view-finder.png")) <view-finder>

== Step 2 - Sketching base of the boat contour

Select the `Center point rectangle` tool from the rectangle tools dropdown as seen in @rect-tool. After selecting, your tool should change in a cross-hair shaped like a plus sign.

#figure(image("images/rect-tool.png")) <rect-tool>

Click on the origin point and then move your mouse outwards as seen in @rect-sketch. At this point in time, it does not matter how far out you go, nor that the numbers that you see in @rect-sketch match your own. 

#warning[Failing to select the origin point when starting the sketch will result an under-defined sketch that does not align with the default geometry of the model. This can cause issues later down the line in more complex models, and should be avoided whenever possible.]

#figure(image("images/rect-sketch.png")) <rect-sketch>

Now that we have shape, we can add dimensions. Select the `Dimension` tool as seen in @dim-tool. Your mouse should once again change to a cross-hair. Click on the left side of the rectangle, and then click off to the side as seen in @rect-dim.

#figure(image("images/dim-tool.png")) <dim-tool>

#figure(image("images/rect-dim.png")) <rect-dim>

We want this rectangle to be a square, and while we could add the same dimension to the bottom or top side of the rectangle, we can add a "constraint" that forces those sides to be equal. We can do this by first holding `Shift` on your keyboard, and then selecting the two sides that you want to be equal. Then go to the constraints menu, and select `Equal` as show in @rect-equal. Now if we change the dimension set earlier, all sides of the square will change size automatically. 

#figure(image("images/rect-equal.png")) <rect-equal>

== Step 3 - Sketching the front of the boat contour 



= Conclusion
/** 
- Move beyond congrats
- Maintence
- Troubleshooting
**/