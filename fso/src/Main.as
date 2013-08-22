package 
{
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.utils.Timer;

	public class Main extends Sprite{
		public var MyField:TextField = new TextField();
		
		public var up:Boolean = false;
		public var down:Boolean = false;
		public var left:Boolean = false;
		public var right:Boolean = false;
		
		public var speed:Number = 5;
		
		public var LoopTimer:Timer = new Timer(1000/30);
		public function Main(){
			MyField.text = "Hello World!";
			addChild(MyField);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUp);
			LoopTimer.addEventListener(TimerEvent.TIMER, loop);
			LoopTimer.start();
		}
		
		public function loop(e:TimerEvent):void{
			if(up){
				MyField.y-=speed;
			}
			if(down){
				MyField.y+=speed;
			}
			if(left){
				MyField.x-=speed;
			}
			if(right){
				MyField.x+=speed;
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
