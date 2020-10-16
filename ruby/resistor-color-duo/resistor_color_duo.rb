module ResistorColorDuo
  Colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"]
  def self.value(resistor)
    "#{Colors.index(resistor[0])}#{Colors.index(resistor[1])}".to_i
  end
end
