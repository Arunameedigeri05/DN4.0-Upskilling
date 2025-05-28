function addEvent(name) {
  console.log(`Event added: ${name}`);
}

function registerUser(eventName) {
  console.log(`User registered for ${eventName}`);
}

function filterEventsByCategory(events, category) {
  return events.filter(e => e.category === category);
}

// Closure to count registrations
function createCategoryCounter() {
  let count = 0;
  return () => ++count;
}
