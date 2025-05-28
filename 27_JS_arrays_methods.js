const events = ["Music", "Workshop", "Food"];
events.push("Seminar");

const musicEvents = events.filter(e => e === "Music");
const cards = events.map(e => `Upcoming: ${e}`);
console.log(cards);
