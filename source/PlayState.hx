package;

import algorithms.Pythagoras;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.FlxState;

class PlayState extends FlxState
{
	public static var POINT_ARRAY = new Array<FlxPoint>();
	var sprite = new FlxSprite(0,0).makeGraphic(2000, 2000, FlxColor.BLACK);
	override public function create()
	{
		Pythagoras.startDrawing();
		super.create();
		sprite.scale.set(0.25, 0.25);
		sprite.updateHitbox();
		add(sprite);
		


	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		for (i in POINT_ARRAY) {
			if (sprite.pixels.getPixel(Std.int(i.x), Std.int(i.y)) == 0xFFFFFF) continue;
			sprite.pixels.setPixel(Std.int(i.x), Std.int(i.y), 0xFFFFFF);
			sprite.updateFramePixels();

		}
	}
}
