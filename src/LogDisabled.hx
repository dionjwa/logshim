//Remove logging
class LogDisabled
{
	inline public static function log (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function debug (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function info (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function warn (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function error (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function critical (?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}
	inline public static function assert (condition :Bool, ?message :String, ?extra :Dynamic, ?pos :haxe.PosInfos) :Void {}

	//Webkit extra calls
	inline public static function count (id :String) :Void {}
	inline public static function enterDebugger () :Void {}
	inline public static function group (groupId :String) :Void {}
	inline public static function groupEnd () :Void {}
	inline public static function time (id) :Void {}
	inline public static function timeEnd (id) :Void {}
	inline public static function profile (id) :Void {}
	inline public static function profileEnd (id) :Void {}
}
#end