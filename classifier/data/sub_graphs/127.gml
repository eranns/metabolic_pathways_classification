graph [
  label "random"
  node [
    id 0
    label "l-asparagine"
  ]
  node [
    id 1
    label "l-glutamate"
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
    label "2-oxoglutarate"
  ]
  edge [
    source 0
    target 4
    weight 1
  ]
  edge [
    source 0
    target 2
    weight 1
  ]
  edge [
    source 1
    target 3
    weight 1
  ]
  edge [
    source 2
    target 4
    weight 1
  ]
]
