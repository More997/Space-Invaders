package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Balas;
import sprites.Personaje;

class PlayState extends FlxState
{
	private var enemigoFila1:FlxGroup;
	private var personaje:sprites.Personaje;
	private var b:Balas;
	override public function create():Void
	{
		super.create();
		enemigoFila1 = new FlxGroup();
		var pos:Int = 3;
		for (i in 0...9)
		{   
			var enemigos1:FlxSprite = new FlxSprite(pos);
			enemigos1.loadGraphic(AssetPaths.Enemigo01__png, true, 16, 16);
			enemigos1.animation.add("mov", [0, 1], 2, true);
			enemigos1.animation.play("mov");
			enemigoFila1.add(enemigos1);
			pos += 17;
			
		}
		
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
			if (FlxG.overlap(b, enemigoFila1.members[i]))
			{
			b.destroy();
			Reg.disparo = true;
			enemigoFila1.members[i].destroy();
			}
		} */
	}
}
