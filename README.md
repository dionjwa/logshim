## Log Shim for Haxe

### Why?

Use the same logging statements in different projects with different logging frameworks without refactoring.

E.g.

	Log.info('stuff happened');

In the root of your main source folder, create a file called Log.hx, and put e.g.

	typedef Log=LogDefault;

This makes available to all classes the Log class with the static logging methods. Change the typedef when you change the logging framework, and avoid refactoring.

When you want to use a different logging framework, just replace the typedef with your other solution.
