graph [
  label "random"
  node [
    id 0
    label "l-tyrosine"
  ]
  node [
    id 1
    label "fumarate"
  ]
  node [
    id 2
    label "2-oxoglutarate"
  ]
  node [
    id 3
    label "l-glutamate"
  ]
  edge [
    source 0
    target 2
    weight 1
  ]
  edge [
    source 0
    target 1
    weight 1
  ]
  edge [
    source 1
    target 2
    weight 1
  ]
]
