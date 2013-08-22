package 
{
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextDisplayMode;
	import flash.text.TextFormatAlign;
	import flash.utils.Timer;

	public class Main extends Sprite{
		[Embed(source="CETIMES.ttf", fontFamily="Times New Roman",
			mimeType="application/x-font")]
		public var Times:Class;
		
		
		public var MyField:TextField = new TextField();
		
		public var up:Boolean = false;
		public var down:Boolean = false;
		public var left:Boolean = false;
		public var right:Boolean = false;
		
		public var speed:Number = 5;
		
		public var LoopTimer:Timer = new Timer(1000/30);
		public function Main(){
			MyField.text = "Hello World!";
			var myFormat:TextFormat = new TextFormat();
			 MyField.autoSize = TextFieldAutoSize.LEFT;
			myFormat.font = "Times New Roman";
			myFormat.size = 20;
			myFormat.align = TextFormatAlign.CENTER;
		 	MyField.antiAliasType = "advanced";
			MyField.embedFonts = true;
			MyField.defaultTextFormat = myFormat;
			
			addChild(MyField);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			LoopTimer.addEventListener(TimerEvent.TIMER, loop);
			LoopTimer.start();
			
			
		}
		
		public function loop(e:TimerEvent):void{
			if(up){
				MyField.y-=speed;
				MyField.rotation+=5;
			}
			if(down){
				MyField.y+=speed;
				MyField.rotation-=5;
			}
			if(left){
				MyField.x-=speed;
				MyField.rotation-=5;
			}
			if(right){
				MyField.x+=speed;
				MyField.rotation+=5;
			}
			
		}
		
		
		public function keyDown(e:KeyboardEvent):void{
			//a
			if(e.keyCode == 65){
				left = true;
			}
			//d
			if(e.keyCode == 68){
				right = true;
			}
			//w
			if(e.keyCode == 87){
				up = true;
			}
			//s
			if(e.keyCode == 83){
				down = true;
			}
			
		}
		
		public function keyUp(e:KeyboardEvent):void{
			//a
			if(e.keyCode == 65){
				left = false;
			}
			//d
			if(e.keyCode == 68){
				right = false;
			}
			//w
			if(e.keyCode == 87){
				up = false;
			}
			//s
			if(e.keyCode == 83){
				down = false;
			}
		}
	}
}
