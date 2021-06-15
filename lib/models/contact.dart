class Contact {
  final String name;
  final String message;

  Contact(
    this.name,
    this.message,
  );

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "message": message,
    };
  }
}
