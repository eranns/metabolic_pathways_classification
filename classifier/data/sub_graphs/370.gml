graph [
  label "random"
  type "trainset"
  node [
    id 0
    label "l-glutamate"
  ]
  node [
    id 1
    label "dehydroascorbate (bicyclic form)"
  ]
  node [
    id 2
    label "2-oxoglutarate"
  ]
  node [
    id 3
    label "glycerol"
  ]
  edge [
    source 1
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
    target 3
    weight 1
  ]
]
