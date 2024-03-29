package;

import nme.Assets;
import nme.geom.Rectangle;
import nme.net.SharedObject;
import org.flixel.FlxButton;
import org.flixel.FlxG;
import org.flixel.FlxPath;
import org.flixel.FlxSave;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.FlxU;

class MenuState extends FlxState
{
	override public function create():Void
	{
		#if !neko
		FlxG.bgColor = 0xff131c1b;
		#else
		FlxG.bgColor = {rgb: 0x131c1b, a: 0xff};
		#end		
		FlxG.mouse.show();
		var mytext:FlxText = new FlxText(0,0,100,"Press X to start");
		add(mytext);
	}
	
	override public function destroy():Void
	{
		super.destroy();
	}

	override public function update():Void
	{
		if (FlxG.keys.pressed("X"))
		{
			FlxG.switchState(new Stage1());
			
		}
		
		super.update();
	}	
}