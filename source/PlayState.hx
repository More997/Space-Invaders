package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Personaje;

class PlayState extends FlxState
{
	private var enemigoFila1:FlxGroup;
	private var personaje:sprites.Personaje;
	override public function create():Void
	{
		super.create();
		/*for (i in 0...11)
		{
			var enemigos1:FlxSprite = new FlxSprite();
			enemigoFila1.add(enemigos1);
		}*/
		
		personaje = new sprites.Personaje();
		add(personaje);
		add(enemigoFila1);
		personaje.y = FlxG.height - personaje.height;
		personaje.x = FlxG.width / 2 - personaje.width / 2;
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		personaje.acciones();
		/*for (i in 0...enemigoFila1.length)
		{
			if FlxG.overlap(b, enemigoFila1.members[i])
			{
			b.destroy();
			enemigoFila1.members[i].destroy();
			}
		}*/
	}
}
