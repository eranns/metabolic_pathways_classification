graph [
  label "testset"
  type "classifier/data/labeled_data/2001"
  node [
    id 0
    label "glucose"
  ]
  node [
    id 1
    label "l-valine"
  ]
  node [
    id 2
    label "l-isoleucine"
  ]
  edge [
    source 0
    target 1
  ]
  edge [
    source 0
    target 2
  ]
  edge [
    source 1
    target 2
  ]
]
