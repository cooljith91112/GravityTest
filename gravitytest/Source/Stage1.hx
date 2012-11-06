package ;

/**
 * ...
 * @author Indrajith K L
 */
import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import nme.Assets;
class Stage1 extends FlxState
{
	var pic:FlxSprite;
	var background:FlxSprite;
	var flag:Bool;
	override public function create():Void
	{
		FlxG.log("Inside Stage1");
		pic = new FlxSprite();
		//background = new FlxSprite();
		//background.loadGraphic("assets/data/clouds.png");
		pic.loadGraphic("assets/sprites/klisman.png");
		//background.x= pic.x = 0;
		//background.y= pic.y = 0;
		//add(background);
		add(pic);
		//FlxG.camera.follow(pic);
		flag = false;

	}
	
	override public function destroy():Void
	{
		super.destroy();
	}
	
	override public function update():Void
	{
		if (FlxG.keys.pressed("G")) {
			pic.acceleration.y = 300;
			FlxG.log("Gravity has been initialized");
		//	flag = true;
		
		}
		/*if (flag)
		{
		
			flag = false;
		}*/
		super.update();
	}
	
}