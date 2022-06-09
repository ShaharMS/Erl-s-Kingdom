package;

import openfl.Lib;
import openfl.display.Shape;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static final FINAL_ARRAY:Array<Position> = [
		{position: 7, time: 1 / 30},
		{position: 7.4, time: 2 / 30},
		{position: 7.8, time: 3 / 30},
		{position: 8.2, time: 4 / 30},
		{position: 8.6, time: 5 / 30},
		{position: 9, time: 6 / 30},
		{position: 9.4, time: 7 / 30},
		{position: 9.8, time: 8 / 30},
		{position: 10.2, time: 9 / 30},
		{position: 10.6, time: 10 / 30},
		{position: 11, time: 11 / 30},
		{position: 11.4, time: 12 / 30},
		{position: 11.8, time: 13 / 30},
		{position: 12.2, time: 14 / 30},
		{position: 12.6, time: 15 / 30},
		{position: 13, time: 16 / 30}
	];
	public function new()
	{
		super();
		var s = this;
		s.graphics.beginFill(0xFFFFFF);
		for (i in 0...100) {
			s.graphics.moveTo(i * 5,i * 5);
			s.graphics.lineTo(i * 5, Lib.application.window.height);
			s.graphics.moveTo(i * 5, i * 5);
			s.graphics.lineTo(Lib.application.window.width, i * 5);
		}
		
	}
}

typedef Position =
{
	position:Float,
	time:Float
}
