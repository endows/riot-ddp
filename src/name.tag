<name>
  <h1>{ opts.last }, { opts.first }</h1>
  <h1>{ this.task.description }</h1>
<script>
var Asteroid = require('asteroid.browser')
var ceres = new Asteroid("localhost:3000");

// Use real-time collections
window.tasks = ceres.getCollection("posts");
window.add = function(){
  tasks.insert({
    description: "Date.now()"
  });
}

this.task = tasks.reactiveQuery({}).result[0]
console.log(tasks.reactiveQuery({}).result[0])
</script>
</name>
