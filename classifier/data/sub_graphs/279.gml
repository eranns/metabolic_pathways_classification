graph [
  label "positive"
  type "trainset"
  node [
    id 0
    label "l-methionine"
  ]
  node [
    id 1
    label "l-cysteine"
  ]
  node [
    id 2
    label "phosphate"
  ]
  node [
    id 3
    label "l-homoserine"
  ]
  edge [
    source 0
    target 1
  ]
  edge [
    source 0
    target 3
  ]
  edge [
    source 1
    target 3
  ]
]
