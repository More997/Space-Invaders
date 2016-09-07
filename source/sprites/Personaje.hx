package sprites;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import sprites.Balas;

/**
 * ...
 * @author ...
 */
class Personaje extends FlxSprite
{
	private var velocidadJugador = 4;
	
	public function movder()
	{
		x += velocidadJugador;
	}
	public function movizq()
	{
		x -= velocidadJugador;
	}
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		loadGraphic("assets/images/Protagonista.png");
	}
	public function acciones()
	{
		if (FlxG.keys.pressed.RIGHT && x < FlxG.width - width)
		{		
			movder();
		}
		if (FlxG.keys.pressed.LEFT && x > 0)
		{
			movizq();
		}
		if (FlxG.keys.justPressed.SPACE && Reg.disparo == true)
		{
			var b:Balas = new Balas();
			Reg.disparo = false;
			b.x = x + width / 2;
			b.y = y;
			FlxG.state.add(b);
		}
	}
	
	
}