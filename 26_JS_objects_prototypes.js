function Event(name, seats) {
  this.name = name;
  this.seats = seats;
}

Event.prototype.checkAvailability = function() {
  return this.seats > 0;
};

const concert = new Event("Concert", 50);
console.log(Object.entries(concert));
