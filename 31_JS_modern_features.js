const defaultEvent = (name = "Generic Event") => name;
const event = { name: "Fair", date: "2025-08-01" };
const { name, date } = event;
const copy = { ...event };
