package;

import flixel.FlxState;

class Menu extends FlxState
{
	public static var POINTS:Array<Position> = [
		{position: 0, time: 0},
		{position: 0.3, time: 1/30},
		{position: 0.6, time: 2/30},
		{position: 0.9, time: 3/30},
		{position: 1.2, time: 4/30},
		{position: 1.6, time: 5/30},
		{position: 2.1, time: 6/30},
		{position: 3, time: 7/30},
		{position: 3.4, time: 8/30},
		{position: 3.8, time: 9/30},
		{position: 4.2, time: 10/30},
		{position: 4.4, time: 11/30}, //writtenDistance - 12.4




		
	]; 
	override public function create()
	{

	}

	override public function update(elapsed:Float)
	{

	}
}

typedef Position = {
	position:Float,
	time:Float
} 
