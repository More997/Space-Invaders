package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
/**
 * ...
 * @author ...
 */
class Balas extends FlxSprite
{
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(2, 4); 
		if (Reg.vidasActuales>0) 
		{
			velocity.y = -120;
		}else 
		{
			destroy();
		}
		
	}
		override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		if (y < 0) 
		{
			Reg.disparo = true;
			destroy();
		}		
	}
}
