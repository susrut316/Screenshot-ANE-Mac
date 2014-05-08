package com.riaxe.extensions
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.external.ExtensionContext;
	
	public class HelloWorld extends EventDispatcher
	{
		private var context:ExtensionContext;
		public function HelloWorld(target:IEventDispatcher=null)
		{
			super(target);
			trace("HelloWorld :: HelloWorld(target:IEventDispatcher=null)");
			context = ExtensionContext.createExtensionContext("com.riaxe.extensions.HelloWorld",null);
			trace(context);
		}
		public function dispose():void
		{
			context.dispose();
		}
		
		public function isSupported():Boolean
		{
			
			return context.call("isSupported");
		}
		public function getHelloWorld():String
		{
			trace("HelloWorld :: getHelloWorld")
			return String(context.call("getHelloWorld"));
		}
		
	}
}