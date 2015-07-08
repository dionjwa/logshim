/**
 * Flambe's internal logger. Games should use their own by calling System.logger() or extending
 * PackageLog.
 */
class LogFlambe extends flambe.util.PackageLog
{
	/**
	  * Additional logging method not in flambe.util.PackageLog
	  */
	inline public static function debug (message :String, ?extra :Dynamic) :Void
	{
		info(message, extra);
	}

	//Webkit extra calls
	inline public static function count (id :String) :Void {}
	inline public static function enterDebugger () :Void {}
#if (js && !nodejs)
	inline public static function group (groupId :String) :Void
	{
		var groupId = groupId;
		untyped __js__('console.group(groupId)');
	}
	inline public static function groupEnd () :Void
	{
		untyped __js__('console.groupEnd()');
	}
#else
	inline public static function group (groupId :String) :Void {}
	inline public static function groupEnd () :Void {}
#end
	inline public static function time (id) :Void {}
	inline public static function timeEnd (id) :Void {}
	inline public static function profile (id) :Void {}
	inline public static function profileEnd (id) :Void {}
}