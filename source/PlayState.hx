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
	private var enemigoFila2:FlxGroup;
	private var enemigoFila3:FlxGroup;
	private var enemigoFila4:FlxGroup;
	private var personaje:sprites.Personaje;
	private var b:Balas;
	override public function create():Void
	{
		super.create();
		enemigoFila1 = new FlxGroup();
		var pos = 3;
		for (i in 0...9)
		{   
			var enemigos1:FlxSprite = new FlxSprite(pos);
			enemigos1.loadGraphic(AssetPaths.Enemigo01__png, true, 16, 16);
			enemigos1.animation.add("mov", [0, 1], 2, true);
			enemigos1.animation.play("mov");
			enemigoFila1.add(enemigos1);
			pos += 17;
			
		}
		enemigoFila2 = new FlxGroup();
	     pos = 3;
		for (i in 0...9)
		{   
			var enemigos2:FlxSprite = new FlxSprite(pos);
			enemigos2.loadGraphic(AssetPaths.Enemigo02__png, true, 16, 16);
			enemigos2.animation.add("mov", [0, 1], 2, true);
			enemigos2.animation.play("mov");
			enemigoFila2.add(enemigos2);
		    enemigos2.y = 17;
			pos += 17;
			
		}
		enemigoFila3 = new FlxGroup();
		pos= 3;
		for (i in 0...9)
		{   
			var enemigos3:FlxSprite = new FlxSprite(pos);
			enemigos3.loadGraphic(AssetPaths.Enemigo03__png, true, 16, 16);
			enemigos3.animation.add("mov", [0, 1], 2, true);
			enemigos3.animation.play("mov");
			enemigoFila3.add(enemigos3);
			enemigos3.y = 34;
			pos += 17;
			
		}
		enemigoFila4 = new FlxGroup();
	     pos = 3;
		for (i in 0...9)
		{   
			var enemigos4:FlxSprite = new FlxSprite(pos);
			enemigos4.loadGraphic(AssetPaths.Enemigo04__png, true, 16, 16);
			enemigos4.animation.add("mov", [0, 1], 2, true);
			enemigos4.animation.play("mov");
			enemigoFila4.add(enemigos4);
		    enemigos4.y = 51;
			pos += 17;
			
		}
		personaje = new sprites.Personaje();
		add(personaje);
		add(enemigoFila1);
		add(enemigoFila2);
		add(enemigoFila3);
		add(enemigoFila4);
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
