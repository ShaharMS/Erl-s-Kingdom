package;

import flixel.FlxState;

class Menu extends FlxState
{
	public static final FINAL_ARRAY:Array<Position>  = [
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

	override public function create() {
		super.create();
		/**
		 * An array of average speeds.
		 */
		var m = [];
		inline function pushing(p:Float)
		{
			m.push(p);
		}
		for (i in 1...POINTS.length) {
			var point = POINTS[i];
			var previousPoint = POINTS[i - 1];
			//calculate average speeds between each position
			var p = (point.position - previousPoint.position) / (point.time - previousPoint.time);
			pushing(p);
		}
		trace(m);
		
	}

	override public function update(elapsed:Float) {}
}

typedef Position =
{
	position:Float,
	time:Float
}

var POINTS:Array<Position> = [
	{position: 0, time: 0},
	{position: 0.3, time: 1 / 30},
	{position: 0.6, time: 2 / 30},
	{position: 0.9, time: 3 / 30},
	{position: 1.2, time: 4 / 30}, //done.
	{position: 1.6, time: 5 / 30},
	{position: 2.1, time: 6 / 30},
	{position: 3, time: 7 / 30},
	{position: 3.4, time: 8 / 30},
	{position: 3.8, time: 9 / 30},
	{position: 4.2, time: 10 / 30}, // done.
	{position: 4.4, time: 11 / 30}, // writtenDistance - 12.4
	{position: 4.6, time: 12 / 30},
	{position: 5, time: 13 / 30},
	{position: 5.4, time: 14 / 30},
	{position: 5.8, time: 15 / 30},
	{position: 6.2, time: 16 / 30},
	{position: 6.6, time: 17 / 30},
	{position: 7, time: 18 / 30},
	{position: 7.4, time: 19 / 30},
	{position: 7.8, time: 20 / 30},
	{position: 8.2, time: 21 / 30},
	{position: 8.6, time: 22 / 30},
	{position: 9, time: 23 / 30},
	{position: 9.4, time: 24 / 30},
	{position: 9.8, time: 25 / 30},
	{position: 10.2, time: 26 / 30},
	{position: 10.6, time: 27 / 30},
	{position: 11, time: 28 / 30},
	{position: 11.4, time: 29 / 30},
	{position: 11.8, time: 30 / 30},
	{position: 12.2, time: 31 / 30},
	{position: 12.6, time: 32 / 30},
	{position: 13, time: 33 / 30}
];