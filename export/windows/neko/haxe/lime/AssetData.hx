package lime;


import lime.utils.Assets;


class AssetData {

	private static var initialized:Bool = false;
	
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var path = new #if haxe3 Map <String, #else Hash <#end String> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();	
	
	public static function initialize():Void {
		
		if (!initialized) {
			
			path.set ("assets/data/data-goes-here.txt", "assets/data/data-goes-here.txt");
			type.set ("assets/data/data-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/Enemigo01.png", "assets/images/Enemigo01.png");
			type.set ("assets/images/Enemigo01.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Enemigo02.png", "assets/images/Enemigo02.png");
			type.set ("assets/images/Enemigo02.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Enemigo03.png", "assets/images/Enemigo03.png");
			type.set ("assets/images/Enemigo03.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Enemigo04.png", "assets/images/Enemigo04.png");
			type.set ("assets/images/Enemigo04.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Escudos.png", "assets/images/Escudos.png");
			type.set ("assets/images/Escudos.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/images-go-here.txt", "assets/images/images-go-here.txt");
			type.set ("assets/images/images-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/images/morir.png", "assets/images/morir.png");
			type.set ("assets/images/morir.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Ovni.png", "assets/images/Ovni.png");
			type.set ("assets/images/Ovni.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Protagonista.png", "assets/images/Protagonista.png");
			type.set ("assets/images/Protagonista.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/images/Vida.png", "assets/images/Vida.png");
			type.set ("assets/images/Vida.png", Reflect.field (AssetType, "image".toUpperCase ()));
			path.set ("assets/music/music-goes-here.txt", "assets/music/music-goes-here.txt");
			type.set ("assets/music/music-goes-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("assets/sounds/sounds-go-here.txt", "assets/sounds/sounds-go-here.txt");
			type.set ("assets/sounds/sounds-go-here.txt", Reflect.field (AssetType, "text".toUpperCase ()));
			path.set ("flixel/sounds/beep.ogg", "flixel/sounds/beep.ogg");
			type.set ("flixel/sounds/beep.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/sounds/flixel.ogg", "flixel/sounds/flixel.ogg");
			type.set ("flixel/sounds/flixel.ogg", Reflect.field (AssetType, "sound".toUpperCase ()));
			path.set ("flixel/fonts/nokiafc22.ttf", "flixel/fonts/nokiafc22.ttf");
			type.set ("flixel/fonts/nokiafc22.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/fonts/monsterrat.ttf", "flixel/fonts/monsterrat.ttf");
			type.set ("flixel/fonts/monsterrat.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			path.set ("flixel/images/ui/button.png", "flixel/images/ui/button.png");
			type.set ("flixel/images/ui/button.png", Reflect.field (AssetType, "image".toUpperCase ()));
			
			
			initialized = true;
			
		} //!initialized
		
	} //initialize
	
	
} //AssetData
