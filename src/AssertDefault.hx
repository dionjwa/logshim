class AssertDefault
{
#if (debug || keep_asserts)
	public static function that(condition :Bool, ?message :String, ?extra :Array<Dynamic>, ?pos :haxe.PosInfos):Void
	{
	    if(!condition) {
	    	fail(message, extra, pos);
	    }
	}
	public static function notNull(e :Dynamic, ?message :String, ?extra :Array<Dynamic>, ?pos :haxe.PosInfos):Void
	{
	    if(e == null) {
	    	fail(message != null ? message : 'element==null', pos);
	    }
	}
	public static function fail(message :String, ?extra :Array<Dynamic>, ?pos :haxe.PosInfos)
	{
        var error = "Assertion failed!";
        if (message != null) {
            error += " " + message;
        }
		Log.error(error, extra, pos);
        throw error;
	}
#else
	inline public static function that(_ :Dynamic, ?message :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) {}
	inline public static function notNull(_ :Dynamic, ?message :Dynamic, ?pos :haxe.PosInfos) {}
	inline public static function fail(_ :Dynamic, ?extra :Dynamic, ?pos :haxe.PosInfos) {}
#end
}