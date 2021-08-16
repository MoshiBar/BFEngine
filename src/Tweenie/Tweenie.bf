using System;
using BfEngine;
using System.Numerics;
using System.Collections;


public class Tweenie
{
	public enum Ease : uint8
	{
		Default,
		Linear,
		Spring,
		InQuad,
		OutQuad,
		InOutQuad,
		InCubic,
		OutCubic,
		InOutCubic,
		InQuart,
		OutQuart,
		InOutQuart,
		InQuint,
		OutQuint,
		InOutQuint,
		InSine,
		OutSine,
		InOutSine,
		InExpo,
		OutExpo,
		InOutExpo,
		InCirc,
		OutCirc,
		InOutCirc,
		InBounce,
		OutBounce,
		InOutBounce,
		InBack,
		OutBack,
		InOutBack,
		InElastic,
		OutElastic,
		InOutElastic
	}



	public struct TweenieStruct
	{
		public uint8 tweenSize;
		public uint16 ID;
		public float time;
		public float duration;
		public Ease easeType;
		public MultiContainer start;
		public MultiContainer end;
		public MultiContainer* target;

		public Action onComplete;
	}

	[Union]
	public struct MultiContainer
	{
		public float[4] array;
		public float float;
		public float2 float2;
		public float4 float4;
		public Vector2 vector2;
		public Vector3 vector3;
		public Quaternion quaternion;
		public Color4 color;

		public static implicit operator MultiContainer(Vector2 v) => MultiContainer() { vector2 = v };
		public static implicit operator MultiContainer(Vector3 v) => MultiContainer() { vector3 = v };
		public static implicit operator MultiContainer(Quaternion q) => MultiContainer() { quaternion = q };
		public static implicit operator MultiContainer(Color4 c) => MultiContainer() { color = c };
		public static implicit operator MultiContainer(float f) => MultiContainer() { float = f };
		public static implicit operator MultiContainer(float2 f) => MultiContainer() { float2 = f };
		public static implicit operator MultiContainer(float4 f) => MultiContainer() { float4 = f };

		public static implicit operator float(MultiContainer c) => c.float;
		public static implicit operator float2(MultiContainer c) => c.float2;
		public static implicit operator float4(MultiContainer c) => c.float4;

		public static implicit operator Vector2(MultiContainer c) => c.vector2;
		public static implicit operator Vector3(MultiContainer c) => c.vector3;

		public static implicit operator Color4(MultiContainer c) => c.color;

		public float this[int i]{
			get => array[i];
			set mut => array[i] = value;
		}
	}

	public struct vec<TCount> where TCount : const int{
		float[TCount] val;
		public static Self operator +(Self a, Self b) {Self r = ?; for(int i < TCount) r.val[i] = a.val[i] + b.val[i]; return r;}
		public static Self operator -(Self a, Self b) {Self r = ?; for(int i < TCount) r.val[i] = a.val[i] - b.val[i]; return r;}
		public static Self operator *(Self a, Self b) {Self r = ?; for(int i < TCount) r.val[i] = a.val[i] * b.val[i]; return r;}
		public static Self operator *(Self a, float b) {Self r = ?; for(int i < TCount) r.val[i] = a.val[i] * b; return r;}

	}

	private static List<TweenieStruct> tweens = new .() ~ delete _;

	private static uint16 nextID;

	public static void KillAllTweens()
	{
		tweens.Clear();
	}

	private static void killTween(uint16 tweenID)
	{
		for (int i = 0; i < tweens.Count; i++)
			if (tweens[i].ID == tweenID)
				tweens.RemoveAtFast(i);
	}

	/*public static void KillTweens(Object obj)
	{
		for (int i = 0; i < tweens.Length; i++)
			if (tweens[i].target == target)
				tweens[i].active = false;
	}*/

	public static ref TweenieStruct AddTween<T>(T* target, T to, float duration, Ease ease, bool killMatchingTween = true) where MultiContainer : operator implicit T
	{
		int setIndex = -1;
		if (killMatchingTween)
		{
			for (int i = 0; i < tweens.Count; i++)
			{
				if (target == tweens[i].target)
				{
					setIndex = i;
					break;
				}
			}
		}

		if (setIndex < 0)
		{
			setIndex = tweens.Count;
			tweens.Add(default);
		}

		return ref SetTween(setIndex, target, to, duration, ease);
	}

	public static ref TweenieStruct SetTween<T>(int index, T* target, T to, float duration, Ease ease) where MultiContainer : operator implicit T
	{
		ref TweenieStruct tween = ref tweens[index];

		tween.tweenSize = (uint8)sizeof(T) / 4;
		tween.ID = nextID++;
		tween.time = 0;
		tween.duration = duration;
		tween.easeType = ease;
		tween.target = (MultiContainer*)target;
		tween.onComplete = null;
		{
			/*Euler
			start = ((Transform)target).rotation.eulerAngles.x;
			if (start.floatvalue > 180) start = start.floatvalue - 360;*/
			tween.start = *target;
		}
		tween.end = to;

		return ref tween;
	}

	// Update is called once per frame
	public static void Update(float deltaTime)
	{
		for (int i = 0; i < tweens.Count; i++)
		{
			ref TweenieStruct tween = ref tweens[i];

			tween.time += deltaTime;

			float time = Math.Clamp(tween.time / tween.duration, 0, 1);

			float ease;

			switch (tween.easeType)
			{
			case Ease.Linear:
				ease = Linear(time);
			case Ease.Spring:
				ease = Spring(time);
			case Ease.InQuad:
				ease = EaseInQuad(time);
			case Ease.OutQuad:
				ease = EaseOutQuad(time);
			case Ease.InOutQuad:
				ease = EaseInOutQuad(time);
			case Ease.InCubic:
				ease = EaseInCubic(time);
			case Ease.OutCubic:
				ease = EaseOutCubic(time);
			case Ease.InOutCubic:
				ease = EaseInOutCubic(time);
			case Ease.InQuart:
				ease = EaseInQuart(time);
			case Ease.OutQuart:
				ease = EaseOutQuart(time);
			case Ease.InOutQuart:
				ease = EaseInOutQuart(time);
			case Ease.InQuint:
				ease = EaseInQuint(time);
			case Ease.OutQuint:
				ease = EaseOutQuint(time);
			case Ease.InOutQuint:
				ease = EaseInOutQuint(time);
			case Ease.InSine:
				ease = EaseInSine(time);
			case Ease.OutSine:
				ease = EaseOutSine(time);
			case Ease.InOutSine:
				ease = EaseInOutSine(time);
			case Ease.InExpo:
				ease = EaseInExpo(time);
			case Ease.OutExpo:
				ease = EaseOutExpo(time);
			case Ease.InOutExpo:
				ease = EaseInOutExpo(time);
			case Ease.InCirc:
				ease = EaseInCirc(time);
			case Ease.OutCirc:
				ease = EaseOutCirc(time);
			case Ease.InOutCirc:
				ease = EaseInOutCirc(time);
			case Ease.InBounce:
				ease = EaseInBounce(time);
			case Ease.OutBounce:
				ease = EaseOutBounce(time);
			case Ease.InOutBounce:
				ease = EaseInOutBounce(time);
			case Ease.InBack:
				ease = EaseInBack(time);
			case Ease.OutBack:
				ease = EaseOutBack(time);
			case Ease.InOutBack:
				ease = EaseInOutBack(time);
			case Ease.InElastic:
				ease = EaseInElastic(time);
			case Ease.OutElastic:
				ease = EaseOutElastic(time);
			case Ease.InOutElastic:
				ease = EaseInOutElastic(time);
			default:
				ease = Linear(time);
			}

			for(int t < tween.tweenSize){
				(*tween.target)[t] = Math.Lerp<float>(tween.start, tween.end, ease);
			}

			if (tween.time >= tween.duration)
			{
				tween.onComplete?.Invoke();
				tweens.RemoveAtFast(i);
				i--;
				continue;
			}
		}
	}


	public static float Linear(float val) => val;

	public static float Spring(float val)
	{
		float _val = Math.Clamp(val, 0, 1);
		_val = (Math.Sin(_val * Math.PI_f * (0.2f + 2.5f * _val * _val * _val)) * Math.Pow(1f - _val, 2.2f) + _val) * (1f + (1.2f * (1f - _val)));
		return _val;
	}

	public static float EaseInQuad(float val) => val * val;

	public static float EaseOutQuad(float val) => -val * (val - 2);

	public static float EaseInOutQuad(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return 1f / 2f * _val * _val;
		_val--;
		return -1f / 2f * (_val * (_val - 2) - 1);
	}

	/*public static float easeInOutQuadOpt2(float start, float diffBy2, float val, float val2)
	{
		val /= .5f;
		if(val < 1) return diffBy2 * val2;
		val--;
		return -diffBy2 * ((val2 - 2) - 1f);
	}*/

	public static float EaseInCubic(float val) => val * val * val;

	public static float EaseOutCubic(float val)
	{
		float _val = val - 1;
		return (_val * _val * _val + 1);
	}

	public static float EaseInOutCubic(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return 1f / 2f * _val * _val * _val;
		_val -= 2;
		return 1f / 2f * (_val * _val * _val + 2);
	}

	public static float EaseInQuart(float val) => val * val * val * val;

	public static float EaseOutQuart(float val)
	{
		float _val = val - 1;
		return -(_val * _val * _val * _val - 1);
	}

	public static float EaseInOutQuart(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return 1f / 2f * _val * _val * _val * _val;
		_val -= 2;
		return -1f / 2f * (_val * _val * _val * _val - 2);
	}

	public static float EaseInQuint(float val) => val * val * val * val * val;

	public static float EaseOutQuint(float val)
	{
		float _val = val - 1;
		return (_val * _val * _val * _val * _val + 1);
	}

	public static float EaseInOutQuint(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return 1f / 2f * _val * _val * _val * _val * _val;
		_val -= 2;
		return 1f / 2f * (_val * -val * _val * _val * _val + 2);
	}

	public static float EaseInSine(float val) => -Math.Cos(val / 1 * (Math.PI_f / 2)) + 1;

	public static float EaseOutSine(float val) => Math.Sin(val / 1 * (Math.PI_f / 2));

	public static float EaseInOutSine(float val) => -1f / 2f * (Math.Cos(Math.PI_f * val / 1) - 1);

	public static float EaseInExpo(float val) => Math.Pow(2, 10 * (val / 1 - 1));

	public static float EaseOutExpo(float val) => (-Math.Pow(2, -10 * val / 1) + 1) * 1.00097751711f;

	public static float EaseInOutExpo(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return 1f / 2f * Math.Pow(2, 10 * (_val - 1));
		_val--;
		return 1f / 2f * (-Math.Pow(2, -10 * _val) + 2) * 1.00048851979f;
	}

	public static float EaseInCirc(float val) => -(Math.Sqrt(1 - val * val) - 1);


	public static float EaseOutCirc(float val)
	{
		float _val = val - 1;
		return Math.Sqrt(1 - _val * _val);
	}

	public static float EaseInOutCirc(float val)
	{
		float _val = val / 0.5f;
		if (_val < 1) return -1f / 2f * (Math.Sqrt(1 - _val * _val) - 1);
		_val -= 2;
		return 1f / 2f * (Math.Sqrt(1 - _val * _val) + 1);
	}

	public static float EaseInBounce(float val)
	{
		float d = 1f;
		return 1 - EaseOutBounce(d - val);
	}

	public static float EaseOutBounce(float val)
	{
		if (val < (1f / 2.75f))
		{
			return (7.5625f * val * val);
		}
		else if (val < (2 / 2.75f))
		{
			float _val = val - (1.5f / 2.75f);
			return (7.5625f * (_val) * _val + 0.75f);
		}
		else if (val < (2.5 / 2.75))
		{
			float _val = val - (2.25f / 2.75f);
			return (7.5625f * (_val) * _val + 0.9375f);
		}
		else
		{
			float _val = val - (2.625f / 2.75f);
			return (7.5625f * (_val) * _val + 0.984375f);
		}
	}

	public static float EaseInOutBounce(float val)
	{
		float d = 1f;
		if (val < d / 2) return EaseInBounce(val * 2) * 0.5f;
		else return EaseOutBounce(val * 2 - d) * 0.5f + 0.5f;
	}

	public static float EaseInBack(float val, float overshoot = 1.0f)
	{
		float s = 1.70158f * overshoot;
		return (val) * val * ((s + 1) * val - s);
	}

	public static float EaseOutBack(float val, float overshoot = 1.0f)
	{
		float s = 1.70158f * overshoot;
		float _val = (val / 1) - 1;
		return ((_val) * _val * ((s + 1) * _val + s) + 1);
	}

	public static float EaseInOutBack(float val, float overshoot = 1.0f)
	{
		float s = 1.70158f * overshoot;
		float _val = val / 0.5f;
		if ((_val) < 1)
		{
			s *= (1.525f) * overshoot;
			return 1f / 2f * (_val * _val * (((s) + 1) * _val - s));
		}
		_val -= 2;
		s *= (1.525f) * overshoot;
		return 1f / 2f * ((_val) * _val * (((s) + 1) * _val + s) + 2);
	}

	public static float EaseInElastic(float val, float overshoot = 1.0f, float period = 0.3f)
	{
		float p = period;
		float s = 0f;
		float a = 0f;

		if (val == 0f) return 0;

		if (val == 1f) return 1;

		if (a == 0f || a < Math.Abs(1))
		{
			a = 1;
			s = p / 4f;
		}
		else
		{
			s = p / (2f * Math.PI_f) * Math.Asin(1 / a);
		}

		float _overshoot = overshoot;

		if (_overshoot > 1f && val > 0.6f)
			_overshoot = 1f + ((1f - val) / 0.4f * (_overshoot - 1f));
		// Debug.Log("ease in elastic val:"+val+" a:"+a+" overshoot:"+overshoot);

		float _val = val - 1f;
		return -(a * Math.Pow(2f, 10f * _val) * Math.Sin((_val - s) * (2f * Math.PI_f) / p)) * _overshoot;
	}

	public static float EaseOutElastic(float val, float overshoot = 1.0f, float period = 0.3f)
	{
		float p = period;
		float s = 0f;
		float a = 0f;

		if (val == 0f) return 0;

		// Debug.Log("ease out elastic val:"+val+" a:"+a);
		if (val == 1f) return 1;

		if (a == 0f || a < Math.Abs(1))
		{
			a = 1;
			s = p / 4f;
		}
		else
		{
			s = p / (2f * Math.PI_f) * Math.Asin(1 / a);
		}

		float _overshoot = overshoot;
		if (_overshoot > 1f && val < 0.4f)
			_overshoot = 1f + (val / 0.4f * (_overshoot - 1f));
		// Debug.Log("ease out elastic val:"+val+" a:"+a+" overshoot:"+overshoot);

		return 1 + a * Math.Pow(2f, -10f * val) * Math.Sin((val - s) * (2f * Math.PI_f) / p) * _overshoot;
	}

	public static float EaseInOutElastic(float val, float overshoot = 1.0f, float period = 0.3f)
	{
		float p = period;
		float s = 0f;
		float a = 0f;

		if (val == 0f) return 0;

		float _val = val / (1f / 2f);
		if (_val == 2f) return 1;

		if (a == 0f || a < Math.Abs(1))
		{
			a = 1;
			s = p / 4f;
		}
		else
		{
			s = p / (2f * Math.PI_f) * Math.Asin(1 / a);
		}

		float _overshoot = overshoot;
		if (_overshoot > 1f)
		{
			if (_val < 0.2f)
			{
				_overshoot = 1f + (_val / 0.2f * (_overshoot - 1f));
			}
			else if (_val > 0.8f)
			{
				_overshoot = 1f + ((1f - _val) / 0.2f * (_overshoot - 1f));
			}
		}

		if (_val < 1f)
		{
			_val = _val - 1f;
			return 0 - 0.5f * (a * Math.Pow(2f, 10f * _val) * Math.Sin((_val - s) * (2f * Math.PI_f) / p)) * _overshoot;
		}
		_val = _val - 1f;
		return 1 + a * Math.Pow(2f, -10f * _val) * Math.Sin((_val - s) * (2f * Math.PI_f) / p) * 0.5f * _overshoot;
	}
}
