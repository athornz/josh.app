workflow "Build gatsby and deploy to github pages" {
  on = "push"
  resolves = ["Gatsby deploy"]
}

action "npm install" {
  uses = "actions/npm@e7aaefe"
  args = "install"
}

action "Gatsby deploy" {
  uses = "actions/npm@e7aaefe"
  needs = ["npm install"]
  args = "run deploy"
}
