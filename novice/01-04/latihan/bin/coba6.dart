// generik

class Location<E> {
  E lat, lng;

  Location(this.lat, this.lng);

  toString() => "Have you been to ${lat}, ${lng}?";
}

void main() {
  var location1 = new Location<double>(21.271488, -157.822806);
  print(location1);

  var location2 = new Location<String>('21.271488', '-157.822806');
  print(location2);

  var location3 = new Location<int>(21, -157);
  print(location3);
}
