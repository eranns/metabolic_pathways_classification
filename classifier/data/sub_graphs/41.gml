graph [
  label "negative"
  type "trainset"
  node [
    id 0
    label "benzoate"
  ]
  node [
    id 1
    label "2-oxoglutarate"
  ]
  node [
    id 2
    label "succinate"
  ]
  node [
    id 3
    label "l-phenylalanine"
  ]
  node [
    id 4
    label "l-glutamate"
  ]
  node [
    id 5
    label "fumarate"
  ]
  node [
    id 6
    label "phosphate"
  ]
  edge [
    source 0
    target 1
    weight 1
  ]
  edge [
    source 0
    target 5
    weight 1
  ]
  edge [
    source 0
    target 3
    weight 1
  ]
  edge [
    source 0
    target 2
    weight 1
  ]
  edge [
    source 1
    target 5
    weight 1
  ]
  edge [
    source 1
    target 3
    weight 1
  ]
  edge [
    source 1
    target 2
    weight 1
  ]
  edge [
    source 2
    target 5
    weight 1
  ]
  edge [
    source 2
    target 3
    weight 1
  ]
  edge [
    source 3
    target 5
    weight 1
  ]
  edge [
    source 4
    target 6
    weight 1
  ]
]
