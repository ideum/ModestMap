package 
{
	import com.gestureworks.cml.core.CMLParser;
	import com.gestureworks.core.GestureWorks;
	import flash.events.Event;
	import com.gestureworks.cml.core.CMLDisplay;

	[SWF(width = "1920", height = "1080", backgroundColor = "0x000000", frameRate = "30")]

	public class Main extends GestureWorks
	{
		
		public function Main():void 
		{
			super();
			cml = "ModestMap.cml";
			
			
			// add this event listener so we know when the CML parsing is complete
			CMLParser.addEventListener(CMLParser.COMPLETE, cmlInit);
		}
	
		override protected function gestureworksInit():void
 		{
			trace("gestureWorksInit()");			
		}
		
		private function cmlInit(event:Event):void
		{
			trace("cmlInit()");
			CMLParser.removeEventListener(CMLParser.COMPLETE, cmlInit);
			
		}
	}
}

