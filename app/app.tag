var Asteroid = require('asteroid.browser')
var api = new Asteroid("localhost:3000");
var PostsCollection = api.getCollection('posts')

<app>
  <form onsubmit={ add }>
    <input />
    <button>発言</button>
  </form>
  <button onclick={ alert }></button>
  <ul each={ p in posts }>
    <h1>{ p.body }</h1>
  </ul>
  <script>
  self = this
  // this.posts = PostsCollection.reactiveQuery({}).result
  PostsCollection.reactiveQuery({}).on('change',function(){
    self.posts = PostsCollection.reactiveQuery({}).result
  })
  window.PostsCollection = PostsCollection
  this.add = function(e){
    var input = e.target[0]
    var text = input.value
    PostsCollection.insert({body:text})
    input.value = ''
  }
  this.alert = function(){
    console.log(this.posts)
  }
  </script>
</app>
