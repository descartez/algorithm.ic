// ----OOJS QUEUE----
var Queue = function(array) {
  this.array = array
};

Queue.prototype.pushQueue = function(items) {
  this.array.push(items)
};

Queue.prototype.pullQueue = function() {
  var dequeued = this.array.shift();
  return dequeued
};

// ----OOJS STACK----
var Stack = function(array) {
  this.array = array
};

Stack.prototype.pushStack = function(items) {
  this.array.unshift(items)
};

Stack.prototype.pullStack = function(items) {
  var topItem = this.array.shift();
  return topItem
};

