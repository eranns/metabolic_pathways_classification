graph [
  label "random"
  type "trainset"
  name "433.gml"
  node [
    id 0
    label "d-threo-isocitrate"
  ]
  node [
    id 1
    label "gdp-alpha;-d-mannose"
  ]
  node [
    id 2
    label "fructose"
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