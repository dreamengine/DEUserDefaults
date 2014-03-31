# DEUserDefaults
[https://github.com/dreamengine/DEUserDefaults](https://github.com/dreamengine/DEUserDefaults)

## What It Does

**You can do this:**

	NSString *value = DEUserDefaults[@"key"];
	DEUserDefaults[@"key"] = @"value";
	[DEUserDefaults synchronize];

**instead of this:**

	NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:@"key"];
	[[NSUserDefaults standardUserDefaults] setObject:@"value" forKey:@"key"];
	[[NSUserDefaults standardUserDefaults] synchronize];

`DEUserDefaults` takes the hassle out of dealing with `NSUserDefaults`. Just use brackets / subscripting and forget about `-standardUserDefaults` or `-objectForKey:`/`-setObject:forKey:`.


## How It Works

### Usage

To get/set values from user defaults, simply use keyed subscripting like you would an `NSDictionary`.

#### Example

	#import "DEUserDefaults.h"

	...

	-(void)someMethod {
		NSString *someString = DEUserDefaults[@"some_string_key"];
		
		NSArray *someArray = DEUserDefaults[@"some_array_key"];
		
		DEUserDefaults[@"number_key"] = @(42);
		
		[DEUserDefaults synchronize];	// easy to save, too
	}


### Under the Hood

Technically, `DEUserDefaults` is a reference to `[NSUserDefaults standardUserDefaults]` plus an `NSUserDefaults` category mixed in to handle keyed subscripting. That means that `DEUserDefaults` is simply an `NSUserDefaults` instance, and you can use the normal `NSUserDefaults` object methods on it.

In other words, `DEUserDefaults` is just syntactic sugar that makes `[NSUserDefaults standardUserDefaults]` easier to work with.

#### Example

	-(void)someMethod {
		NSDictionary *representation = DEUserDefaults.dictionaryRepresentation;
		
		[DEUserDefaults registerDefaults:someDictionary];
		
		NSArray *array = [DEUserDefaults arrayForKey:@"some_array_key"];
	}