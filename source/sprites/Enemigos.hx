package sprites;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;
/**
 * ...
 * @author ...
 */
class Enemigos extends FlxSprite
{
	public var posicionX:Int = 0;

	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);		
	}	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	
		if (x< Std.int(FlxG.width - (FlxG.width - posicionX + width)))
		{
			x++;
		}
		
	}	
}