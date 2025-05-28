const events = [
  { name: "Art Show", date: "2025-07-01", seats: 10 },
  { name: "Old Fair", date: "2024-01-01", seats: 0 }
];

events.forEach(event => {
  if (new Date(event.date) > new Date() && event.seats > 0) {
    console.log(`Available: ${event.name}`);
  }
});
