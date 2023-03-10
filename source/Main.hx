class Character {
  public var name:String;
  public var health:Int;
  public var attack:Int;
  public var defense:Int;
  
  public function new(name:String, health:Int, attack:Int, defense:Int) {
    this.name = name;
    this.health = health;
    this.attack = attack;
    this.defense = defense;
  }
  
  public function takeDamage(damage:Int):Void {
    health -= damage;
    if (health <= 0) {
      // O personagem morreu
    }
  }
  
  public function attackCharacter(target:Character):Void {
    var damage:Int = attack - target.defense;
    if (damage > 0) {
      target.takeDamage(damage);
    }
  }
}

