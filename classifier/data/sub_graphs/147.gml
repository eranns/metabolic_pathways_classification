graph [
  label "random"
  node [
    id 0
    label "glycine"
  ]
  node [
    id 1
    label "phosphate"
  ]
  node [
    id 2
    label "fumarate"
  ]
  node [
    id 3
    label "l-aspartate"
  ]
  node [
    id 4
    label "l-glutamate"
  ]
  node [
    id 5
    label "l-glutamine"
  ]
  edge [
    source 1
    target 3
    weight 1
  ]
  edge [
    source 1
    target 4
    weight 1
  ]
  edge [
    source 3
    target 4
    weight 1
  ]
]
