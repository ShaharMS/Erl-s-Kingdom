package algorithms;

import haxe.Timer;
import flixel.math.FlxMath;
import sys.FileSystem;
import haxe.SysTools;
import openfl.system.System;
import sys.net.Host;
import sys.thread.Lock;
import sys.thread.Thread;
import flixel.math.FlxPoint;
using algorithms.Pythagoras;
class Pythagoras {
    
    public static function startDrawing() {
		for (X in 1...2000) {
			for (Y in 1...2000) {
				if ((X.squared() + Y.squared()) == new FlxPoint().distanceToPoint(new FlxPoint(X, Y)).squared()) {
					PlayState.POINT_ARRAY.push(new FlxPoint(X, Y));
				}
			}
		}
    }
    static inline function squared(int:Int):Int {
        return int * int;
    }
	static inline function distanceToPoint(Point:FlxPoint, Target:FlxPoint):Int
	{
		var dx:Float = (Point.x + Point.x) - Target.x;
		var dy:Float = (Point.y + Point.y) - Target.y;
		Target.putWeak();
		return Std.int(FlxMath.vectorLength(dx, dy));
	}
}