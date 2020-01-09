graph [
  label "negative"
  type "trainset"
  node [
    id 0
    label "2-oxoglutarate"
  ]
  node [
    id 1
    label "glycine"
  ]
  node [
    id 2
    label "phosphate"
  ]
  node [
    id 3
    label "l-glutamate"
  ]
  node [
    id 4
    label "l-isoleucine"
  ]
  node [
    id 5
    label "l-threonine"
  ]
  edge [
    source 0
    target 1
    weight 1
  ]
  edge [
    source 0
    target 4
    weight 1
  ]
  edge [
    source 0
    target 5
    weight 1
  ]
  edge [
    source 1
    target 4
    weight 1
  ]
  edge [
    source 1
    target 5
    weight 1
  ]
  edge [
    source 2
    target 3
    weight 1
  ]
  edge [
    source 4
    target 5
    weight 1
  ]
]