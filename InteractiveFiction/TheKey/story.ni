"The Key"

[Hints: minimal]
Release along with cover art and the "Parchment2024.2" interpreter.
Use Undo Prevention.
[sorry.. if you lose the key, you will need to restart the game]

Chapter 1 - Finding the Cavern

Section 1 - Entrance

Cave Entrance is a room.  The description of the Cave Entrance is "A steep rock cliff rises above you to the east. In the cliff wall you see a [small wooden door][if the door is closed] that is half your height. You imagine yourself able to climb through nonetheless[end if]. To the west there is a meadow. [if the small wooden door is unlocked]There is a key stuck in the lock of the small door. Good thing it is already unlocked.[end if]"

The small wooden door is a locked door. The small wooden door is east of the Cave Entrance and west of the Cavern.

Section 2 - The Meadows

[the meadow rooms introduce methods for creating a maze - where room names and descriptions appear the same.]
The Meadow1 is west of the Cave Entrance. "Tall grass waves in the breeze. A path continues across the meadow." The printed name is "Meadow"

The Meadow2 is west of the Meadow1. "Tall grass waves in the breeze. A path continues across the meadow." The printed name is "Meadow"

The Meadow3 is west of the Meadow2. "Tall grass waves in the breeze. You find yourself at a bend in a scarcely traveled path. The path continues to the north and to the east." The printed name is "Meadow"

Section 3 - The Brook

The Brook Side is north of the Meadow3. "A gentle brook separates a steep bank from the field behind you. Just beneath the ripples of water, you see a [small shiny box] partially buried in the otherwise pristine looking bed of pebbles."

The small shiny box is in the Brook Side. The box is a container. The box contains a rugged yet distinguished key. The box is closed and openable. The rugged yet distinguished key unlocks the wooden door.

After unlocking the small wooden door with the key:
	say "That worked! But the key seems to be stuck in the door. Hopefully you don't need it again.";
	now the key is nowhere;
	now the door is unlocked.

Instead of dropping the box when the player is in the Brook Side:
	say "You carelessly toss the box back into the stream.";
	continue the action;

After opening the box when (the box is not held by the player) and (the box is in the Brook Side) and (the box contains the key):
	end the story finally saying "As you open the box, you glimpse something shiny tumble out into the stream. It washes away quickly and is gone. In the bottom of the box, you see an engraving: 'Place key HERE.' Oops."
[this story actually has a way to lose; sorry about that.]

Chapter 2 - The Cavern and Beyond

Section 1 - Cavern

The Cavern is a room. "[if unvisited]You have reached the cavern. The floor seems untouched as you look for any sign of prior travelers. [end if]This small cavern expands to a larger opening to the northeast. [if the Chamber of Repose is unvisited]It is dark, but seems worth a try. [end if][if small wooden door is open]There is a [small wooden door] in the west wall. The door is slightly ajar, allowing what little light is available here. You are still crouched over to avoid hitting your head. [otherwise]The [small wooden door] is closed and has rendered the cavern quite dark. That [stump] seems to have done the trick. Illuminated by an unknown source, you see a narrow tunnel winding away from the southeast corner.[end if]".

After going to the Cavern for the first time:
	say "You struggle, but succeed to enter the tiny doorway.";
	continue the action.

Instead of closing the small wooden door in the Cavern:
	say "The door just swings open again.";
	now the small wooden door is open.

Instead of putting the stump on the door:
	say "You lean the stump against the door, holding it perfectly shut.";
	say line break;
	say "The [small wooden door] is closed and has rendered the cavern quite dark. Illuminated by an unknown source, you see a narrow tunnel winding away from the southeast corner.";
	now the stump is in the Cavern;
	now the small wooden door is closed.

[make sure there are a few ways to rest the stump against the door]
Understand "slide [something] to [something]" 
	or "push [something] to [something]"
	or "push [something] toward [something]"
	or "lean [something] on [something]"
	or "lean [something] against [something]"
	or "put [something] against [something]"
	or "rest [something] against [something]"
	as putting it on.
Understand "block [something] with [something]"
	or "close [something] with [something]" 
	as putting it on (with nouns reversed).

Instead of taking the stump when the small wooden door is closed:
	say "You lift the [stump] and the door swings open again.";
	now the small wooden door is open;
	now the player has the stump.

[exits here have some complications. different behaviors depending on light or dark, as well as the passageway to the Chamber of Repose being twisted.]
Instead of the player going nowhere from the Cavern when the small wooden door is open:
	say "You only see the opening to the northeast.".
Instead of the player going southeast from the Cavern when the small wooden door is open:
	say "You only see the opening to the northeast.".
Instead of the player going east from the Cavern when the small wooden door is open:
	say "You only see the opening to the northeast.".
Instead of the player going east from the Cavern when the small wooden door is closed:
	say "You can't go that way."

Section 2 - The Chambers

After going to the Chamber of Repose for the first time:
	say "weird tunnel... was that two rights and a left?.. or a right and two lefts?.. You realize that the tunnel has left you a little disoriented and very much in the dark.";
	continue the action.

The Chamber of Repose is northeast of the Cavern. "[if unvisited]As you enter the space, you almost trip on what seems to be a [stump]. Fortunately, it isn't too heavy or that would have smarted. You kicked it hard enough to cause it to slide a bit. [end if][if stumpProgress is 0]You can stand here. Although perhaps you should rest and gather your thoughts.[end if][if stumpProgress is 1]This stump is quite nice. You wonder if it may come in use again later. [end if][if stumpProgress is 2]You realize that your eyes are still adjusting to the tiny bit of light entering this chamber.[end if][if stumpProgress is 3]You see some light coming from the west side of the chamber.[end if]"

Understand "gather" as taking.
Understand "gather [something]" as taking.

The thoughts are scenery in the Chamber of Repose.
Instead of taking thoughts: say "You already have them."

Understand "rest" as resting.
Resting is an action applying to nothing.

Instead of resting:
	say "Maybe you should simply sit for a bit?".

After looking in the Chamber of Repose when stumpProgress is 2:
	now stumpProgress is 3.

[northeast to get 'to', west to get back.]
The Cavern is west of the Chamber of Repose.

[the stump becomes useful twice; sitting and closing the door.]
The stump is in the Chamber of Repose. The stump is portable and an enterable supporter.

stumpProgress is a number that varies.
stumpProgress is 0.

Understand "sit down on [stump]" as entering.

Instead of taking the stump when stumpProgress is 0:
	say "Maybe rest first?".

Instead of entering the stump:
	say "This stump is great.";
	move the player to the stump.

Instead of entering the stump when the holder of the stump is player:
	say "You are carrying the stump".

Instead of entering the stump when the location of the player is the Chamber of Repose and stumpProgress is 0:
	say "Wow. Is this the first time you've sat down all day? Feels nice.";
	now stumpProgress is 1;
	move the player to the stump.
				
Instead of exiting from the stump:
	say "So refreshing.";
	move the player to the location of the stump.

Instead of exiting from the stump when stumpProgress is 1:
	now stumpProgress is 2;
	move the player to the location of the stump.

[unrested player cannot exit]
Instead of the player going west from the Chamber of Repose when stumpProgress is less than 2:
	say "Ouch! You bump your head on the wall. It is really dark in here.".
Instead of the player going nowhere from the Chamber of Repose when stumpProgress is less than 2:
	say "Ouch! You bump your head on the wall. It is really dark in here.".
Instead of the player going southwest from the Chamber of Repose when stumpProgress is less than 2:
	say "Ouch! You bump your head on the wall. It is really dark in here.".
Instead of the player going southwest from the Chamber of Repose when stumpProgress is greater than 1:
	say "You can't go that way.".

[treasure]
The Chamber of Jewels is southeast of the Cavern. "You are surrounded by [unspeakable treasure]. The moment is diminished as you imagine that future quests will require more work while yielding smaller rewards."

The unspeakable treasure is in the Chamber of Jewels.

After taking the treasure:
	end the story finally saying "You have succeeded.".

Chapter 3 - Special Stuff

Section 1 - Tests

Test me with "test first / test second / test third".
Test first with "w / w / w / n / take box / open box / take key / s / e / e / e".
Test second with "unlock door with key / e".
Test third with "ne / sit on stump / stand / take stump / w / close door with stump / se / take all".
