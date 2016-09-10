package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;
import sprites.Balas;
import sprites.Enemigos;
import sprites.Personaje;

class PlayState extends FlxState
{
	private var enemigoFila1:FlxGroup;
	private var enemigoFila2:FlxGroup;
	private var enemigoFila3:FlxGroup;
	private var enemigoFila4:FlxGroup;
	private var personaje:sprites.Personaje;
	public var b:Balas;
	override public function create():Void
	{
		super.create();
		b = new Balas();
		enemigoFila1 = new FlxGroup();
		var pos = 3;
		for (i in 0...8)
		{   
			var enemigos1:sprites.Enemigos = new sprites.Enemigos (pos);
			enemigos1.loadGraphic(AssetPaths.Enemigo01__png, true, 16, 16);
			enemigos1.animation.add("mov", [0, 1], 2, true);
			enemigos1.animation.play("mov");			
			enemigoFila1.add(enemigos1);
			enemigos1.posicionX = pos;
			pos += 17;
			
		}
		enemigoFila2 = new FlxGroup();
	     pos = 3;
		for (i in 0...8)
		{   
			var enemigos2:sprites.Enemigos  = new sprites.Enemigos (pos);
			enemigos2.loadGraphic(AssetPaths.Enemigo02__png, true, 16, 16);
			enemigos2.animation.add("mov", [0, 1], 2, true);
			enemigos2.animation.play("mov");
			enemigoFila2.add(enemigos2);
			enemigos2.posicionX = pos;
		    enemigos2.y = 17;
			pos += 17;
			
		}
		enemigoFila3 = new FlxGroup();
		pos= 3;
		for (i in 0...8)
		{   
			var enemigos3:sprites.Enemigos = new sprites.Enemigos (pos);
			enemigos3.loadGraphic(AssetPaths.Enemigo03__png, true, 16, 16);
			enemigos3.animation.add("mov", [0, 1], 2, true);
			enemigos3.animation.play("mov");
			enemigoFila3.add(enemigos3);
			enemigos3.posicionX = pos;
			enemigos3.y = 34;
			pos += 17;
			
		}
		enemigoFila4 = new FlxGroup();
	     pos = 3;
		for (i in 0...8)
		{   
			var enemigos4:sprites.Enemigos  = new sprites.Enemigos (pos);
			enemigos4.loadGraphic(AssetPaths.Enemigo04__png, true, 16, 16);
			enemigos4.animation.add("mov", [0, 1], 2, true);
			enemigos4.animation.play("mov");
			enemigoFila4.add(enemigos4);
			enemigos4.posicionX = pos;
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
		for (i in 0...enemigoFila1.length)
		{
			if (FlxG.overlap(b, enemigoFila1.members[i]))
			{
			Reg.disparo = true;
			b.destroy();
			enemigoFila1.members[i].destroy();
			}
		} 
	    for (i in 0...enemigoFila2.length)
		{
			if (FlxG.overlap(b, enemigoFila2.members[i]))
			{
			Reg.disparo = true;
			b.destroy();
			enemigoFila2.members[i].destroy();
			}
		} 
		for (i in 0...enemigoFila3.length)
		{
			if (FlxG.overlap(b, enemigoFila3.members[i]))
			{
			Reg.disparo = true;
			b.destroy();
			enemigoFila3.members[i].destroy();
			}
		} 
		for (i in 0...enemigoFila4.length)
		{
			if (FlxG.overlap(b, enemigoFila4.members[i]))
			{
			Reg.disparo = true;
			b.destroy();
			enemigoFila4.members[i].destroy();
			}
		} 
		if (FlxG.keys.justPressed.SPACE && Reg.disparo == true)
		{			
			b = new Balas();
			Reg.disparo = false;
			b.x = personaje.x + personaje.width / 2;
			b.y = personaje.y;
			FlxG.state.add(b);
		}
		
	}	
}
