# Rspec Takanakuy

Your job will be to develop a takanaquy game in a test-driven way using Rspec.

### Fighter Spec

* A Fighter has a name
* A Fighter has a type
* the types are: majeno (cowboy), quarawatanna (biker), and langos (locust)

### Arena Spec

* An arena has a name
* The arena name should be capitalized
* An arena can have fighters
* You can add a fighter to the arena
  * The arena should never have more than 2 fighters in it at a time
* If there are two fighters in the arena, you can call a fight method that will kill one of the fighters and remove them from the arena.
  * Winning conditions:
    * Majeno beats quarawatanna
    * quarawatanna beats langos
    * langos beats majeno
    * If the two fighters have the same weapon, they both die.

### TDD
* This is an excercise in TDD. Test Driven Development. Write a spec for each class and include tests for your methods in those class specs.

### Bonus

* Add a method to remove fighters from the arena by name

* Update your winning conditions so that if the fighter named "Gallo" is in the fight, he should always lose.

* When a fight is over, before the fighter is killed and removed, the user should be prompted to put their thumbs up or down. If they vote down, remove the losing fighter from the arena. If they vote up, the fighter stays alive in the arena.

