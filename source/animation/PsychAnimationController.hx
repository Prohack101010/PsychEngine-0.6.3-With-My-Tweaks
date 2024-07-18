package animation;

import flixel.animation.FlxAnimationController;
import flixel.FlxG;

class PsychAnimationController extends FlxAnimationController {
    public override function update(elapsed:Float):Void {
		if (_curAnim != null) {
            var speed:Float = FlxAnimationController.timeScale; // ??
            if (followGlobalSpeed) speed *= FlxG.animationTimeScale;
			_curAnim.update(elapsed * speed);
		}
		else if (_prerotated != null) {
			_prerotated.angle = _sprite.angle;
		}
	}
}