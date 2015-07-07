<app>
  <form onsubmit={ add }>
    <input />
    <button>発言</button>
  </form>
  <ul each={ p in posts }>
    <h1>{ p }</h1>
  </ul>
  <script>
  this.posts = ['a','b','c']
  this.add = function(e){
    var input = e.target[0]
    var text = input.value
    this.posts.push(text)
    input.value = ''
  }
  </script>
</app>
