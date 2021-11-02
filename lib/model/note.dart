class Note {
  var title;
  var description;
  Note(this.title, this.description);

  static List<Note> notes = [
    Note("Shopping List", "1. Chicken, 2. Butter 3. Milk"),
    Note("Going for a walk", "Today I want to go for a walk in the morning."),
    Note("Shopping List", "1. Chicken, 2. Butter 3. Milk"),
    Note("Shopping List", "1. Chicken, 2. Butter 3. Milk"),
  ];
}
