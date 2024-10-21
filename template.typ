#let enhanced-date(input-date) = {
  let date
  if input-date == "" {date = datetime.today().display("[month repr:long] [day], [year]")}
  else {date = input-date}

  [#date]
}

#let project(title: "", authors: "", affiliations: "", date: "", accent-color: blue.darken(50%), body) = {   

  let light-accent-color = accent-color.lighten(30%).saturate(40%)

  set document(title: title, author: authors)

  set text(font: "Barlow")
  
  set page(
    paper: "us-letter", 
    margin: .625in,
    header: context{
      text(.7em, luma(30%))[#enhanced-date(date) #h(1fr) #counter(page).display("1/1", both: true)]
      },
    footer: text(.7em, luma(30%))[#affiliations #h(1fr) Jason Daniel Pieck]
  )
  
  set grid(column-gutter: .65em)
  set par(justify: true)
  // set box(height: 1em)
  // show box: it => it.body 

  // Title Row
  align(center, {
    text(2em, weight: "bold", title)
    v(-1em)
    text(1.25em, weight: "light", authors)
  })

  // set heading(numbering: "1.1.1.")

  show heading.where(level: 1): it => context{
    line(length: 100%, stroke: accent-color)
    v(-.7em)
    // if counter(heading).get() != (0, ) {pagebreak()}
    text(fill: accent-color, weight: "extrabold", 1.25em, it)
    // if counter(heading).get() != (0, ) {v(-0.5em)} 
  }

  // show heading.where(level: 2): it => {v(0.8em) + it}

  show link: it => {text(light-accent-color, underline(it))}
  show ref: it => {text(light-accent-color, underline(it))}


  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  show table.cell.where(y: 0): strong

  show figure.caption: set text(.9em, fill: accent-color)
  show figure.caption.where(body: []): it => it.supplement + [ ] + context it.counter.display()

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

  // show image: it => {block(stroke: 1pt + light-accent-color, radius: .5pt, it)}


  body
  
}