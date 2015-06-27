console.log('ok')
var Asteroid = require('asteroid.browser')
console.log(Asteroid)
var ceres = new Asteroid("localhost:3000");

// Use real-time collections
var tasks = ceres.getCollection("posts");
window.add = function(){
  tasks.insert({
    description: "Date.now()"
  });
}

window.TaskRQ = tasks.reactiveQuery({});
