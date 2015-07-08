class LogMConsole
{
	private static function __init__() : Void untyped
    {
        Console.start();
    }

    inline public static function count (id :String) :Void
	{
		Console.count(id);
	}

	inline public static function enterDebugger () :Void
	{
		Console.enterDebugger();
	}

	inline public static function group (groupId :String) :Void
	{
		Console.group(groupId);
	}

	inline public static function groupEnd () :Void
	{
		Console.groupEnd();
	}

	inline public static function time (id) :Void
	{
		Console.time(id);
	}

	inline public static function timeEnd (id) :Void
	{
		Console.timeEnd(id);
	}

	inline public static function profile (id) :Void
	{
		Console.profile(id);
	}

	inline public static function profileEnd (id) :Void
	{
		Console.profileEnd(id);
	}

	inline public static function debug (message :Dynamic, ?extra: Dynamic, ?pos :haxe.PosInfos) :Void
	{
		if (extra != null) {
			Console.debug([message, extra], pos);
		} else {
			Console.debug(message, pos);
		}
	}

	inline public static function info (message :Dynamic, ?extra: Dynamic, ?pos :haxe.PosInfos) :Void
	{
		if (extra != null) {
			Console.info([message, extra], pos);
		} else {
			Console.info(message, pos);
		}
	}

	inline public static function warn (message :Dynamic, ?extra: Dynamic, ?pos :haxe.PosInfos) :Void
	{
		if (extra != null) {
			Console.warn([message, extra], pos);
		} else {
			Console.warn(message, pos);
		}
	}

	inline public static function error (message :Dynamic, ?extra: Dynamic, ?pos :haxe.PosInfos) :Void
	{
		if (extra != null) {
			Console.error([message, extra], pos);
		} else {
			Console.error(message, pos);
		}
	}
}