﻿package  
{
	import flash.display.SimpleButton;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.display.MovieClip;
	import flash.display.DisplayObjectContainer;
	
	public class GAnvil extends flash.display.MovieClip 
	{
		public var timer:Timer = new Timer(25);
		
		
		public function GAnvil() 
		{
			timer.addEventListener("timer", controlFall); //controls the falling.
			timer.start();
		}
		
		
		function controlFall(event:TimerEvent)
		{
			
			this.y=this.y+1;

			if(this.y>275)
			{
				this.y=(Math.floor(Math.random()*-100))-350;
				this.x= ((Math.floor(Math.random() * 6))*50)+150;
				
			}

		}
	}
}