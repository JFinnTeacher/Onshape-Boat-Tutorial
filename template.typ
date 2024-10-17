// Function that checks whether a date as been added
// If no date was selected, it will set the date to the current date
#let enhanced-date(input-date) = {
  let date
  if input-date == "" {date = datetime.today().display("[month repr:long] [day], [year]")}
  else {date = input-date}

  [#date]
}

// Main function that defines how the document looks
// The accent color is by default a dark blue
#let project(title: "", authors: "", affiliations: "", date: "", accent-color: blue.darken(50%), body) = {   

  // Set the basic document properties
  set document(title: title, author: authors)

  // Set the font
  set text(font: "Barlow")
  
  // Set the page size, margin, and header/footer
  set page(
    paper: "us-letter", 
    // height: auto, // setting this to auto will make the page go on until the next page break
    margin: 1in,
    header: text(.7em)[#enhanced-date(date) #h(1fr) #counter(page).display("1/1", both: true)],
    footer: text(.7em)[#affiliations #h(1fr) Jason Daniel Pieck]
  )
  
  // Title row
  align(center, {
    text(2em, weight: "bold", title)
    v(-1em)
    text(1.25em, weight: "light", authors)
  })

  // Set the heading numbering 
  // set heading(numbering: "1.1.1.")

  // When the heading is level 1, add a line, then a pagebreak, and remove some vertical space
  // Don't do this for the first header.
  show heading.where(level: 1): it => context{
    line(length: 100%, stroke: accent-color)
    // if counter(heading).get() != (0, ) {pagebreak()}
    text(fill: accent-color, weight: "extrabold", it)
    // if counter(heading).get() != (0, ) {v(-0.5em)} 
  }

  // Change display of heading level 2
  show heading.where(level: 2): it => {v(0.8em) + it}

  // Display link with color and underline
  show link: it => {text(accent-color.lighten(30%).saturate(40%), underline(it))}
  show ref: it => {text(accent-color.lighten(30%).saturate(40%), underline(it))}

  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  // Make the first row of the table bold
  show table.cell.where(y: 0): strong

  // Change the size and color of caption text
  show figure.caption: set text(.8em, fill: accent-color)

  // Indent numbered lists
  set enum(indent: 1em)

  // In-Line Code Display
  show raw.where(block: false): box.with(
    fill: luma(240),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  // Code Block Display
  show raw.where(block: true): block.with(
    fill: luma(96%),
    inset: 10pt,
    radius: 4pt,
  )

  body
  
}