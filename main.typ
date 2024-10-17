#import "template.typ": *
#import "@preview/oasis-align:0.1.0": *
#import "@preview/wrap-it:0.1.0": wrap-content
// #import "@preview/babble-bubbles:0.1.0": *


#show: project.with(
  title: "Title", // make, model, version + procedure + context
  authors: "Jason Daniel Pieck",
  affiliations: "UWP 102E A03"
  
)

// #warning[This ]

/** 
- 4 to 5 whole pages
- 8 to 15 steps (should be linear and non-branching)
- Techical procedure to someone with 0 background knowledge
- can be chatper of manual 
**/


= Introduction
/*
- hook: someone without background to do x (what this is about )
- X should be particular
- about 1.5 pages
- context
*/
You don't need any background in...
// Hook: make, model, version, procedure, context, no background, knowlege

// story: give me a tour of the place, and then Im ready to start

// Teach the reader terms and concepts to do steps
#figure([something static], caption: [caption of the static figure])
== Roadmap
// Roadmap sentence: 3 main elements of the procedure
== Cautions
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

= Conclusion
/** 
- Move beyond congrats
- Maintence
- Troubleshooting
**/