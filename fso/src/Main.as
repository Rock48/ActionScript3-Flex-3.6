package 
{
	import flash.display.Sprite;
	import flash.text.TextField;

	public class Main extends Sprite{
		public var MyField:TextField = new TextField();
		public function Main(){
			MyField.text = "Hello World!";
			addChild(MyField);
		}
	}
}
