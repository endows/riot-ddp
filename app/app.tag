
<app>
  <ul each={ greet }>
    <h1>{ this }</h1>
  </ul>
  <button onclick={ changeGreet }></button>
  window.data = ['hello','bollo']
  this.greet = data
  window.update = this.update
  this.changeGreet = function(){
    this.greet.push('ano--')
    console.log(this.greet)
  }
</app>
