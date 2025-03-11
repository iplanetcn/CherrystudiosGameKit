import Foundation
import CoreGraphics

/// Linear timing function that returns the input value unchanged
public func SKTTimingFunctionLinear(_ t: CGFloat) -> CGFloat {
  return t
}

/// Quadratic ease-in timing function that accelerates from zero velocity
public func SKTTimingFunctionQuadraticEaseIn(_ t: CGFloat) -> CGFloat {
  return t * t
}

/// Quadratic ease-out timing function that decelerates to zero velocity
public func SKTTimingFunctionQuadraticEaseOut(_ t: CGFloat) -> CGFloat {
  return t * (2.0 - t)
}

/// Quadratic ease-in-out timing function that accelerates until halfway, then decelerates
public func SKTTimingFunctionQuadraticEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 2.0 * t * t
  } else {
    let f = t - 1.0
    return 1.0 - 2.0 * f * f
  }
}

/// Cubic ease-in timing function with stronger acceleration than quadratic
func SKTTimingFunctionCubicEaseIn(_ t: CGFloat) -> CGFloat {
  return t * t * t
}

/// Cubic ease-out timing function with stronger deceleration than quadratic
func SKTTimingFunctionCubicEaseOut(_ t: CGFloat) -> CGFloat {
  let f = t - 1.0
  return 1.0 + f * f * f
}

/// Cubic ease-in-out timing function that combines cubic ease-in and ease-out
public func SKTTimingFunctionCubicEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 4.0 * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 + 4.0 * f * f * f
  }
}

/// Quartic ease-in timing function with even stronger acceleration
public func SKTTimingFunctionQuarticEaseIn(_ t: CGFloat) -> CGFloat {
  return t * t * t * t
}

/// Quartic ease-out timing function with even stronger deceleration
public func SKTTimingFunctionQuarticEaseOut(_ t: CGFloat) -> CGFloat {
  let f = t - 1.0
  return 1.0 - f * f * f * f
}

/// Quartic ease-in-out timing function that combines quartic ease-in and ease-out
public func SKTTimingFunctionQuarticEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 8.0 * t * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 - 8.0 * f * f * f * f
  }
}

/// Quintic ease-in timing function with the strongest polynomial acceleration
public func SKTTimingFunctionQuinticEaseIn(_ t: CGFloat) -> CGFloat {
  return t * t * t * t * t
}

/// Quintic ease-out timing function with the strongest polynomial deceleration
public func SKTTimingFunctionQuinticEaseOut(_ t: CGFloat) -> CGFloat {
  let f = t - 1.0
  return 1.0 + f * f * f * f * f
}

/// Quintic ease-in-out timing function that combines quintic ease-in and ease-out
func SKTTimingFunctionQuinticEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 16.0 * t * t * t * t * t
  } else {
    let f = t - 1.0
    return 1.0 + 16.0 * f * f * f * f * f
  }
}

/// Sine ease-in timing function using a sine curve for acceleration
public func SKTTimingFunctionSineEaseIn(_ t: CGFloat) -> CGFloat {
  return sin((t - 1.0) * π/2) + 1.0
}

/// Sine ease-out timing function using a sine curve for deceleration
public func SKTTimingFunctionSineEaseOut(_ t: CGFloat) -> CGFloat {
  return sin(t * π/2)
}

/// Sine ease-in-out timing function that combines sine ease-in and ease-out
public func SKTTimingFunctionSineEaseInOut(_ t: CGFloat) -> CGFloat {
  return 0.5 * (1.0 - cos(t * π))
}

/// Circular ease-in timing function using circular function for acceleration
public func SKTTimingFunctionCircularEaseIn(_ t: CGFloat) -> CGFloat {
  return 1.0 - sqrt(1.0 - t * t)
}

/// Circular ease-out timing function using circular function for deceleration
public func SKTTimingFunctionCircularEaseOut(_ t: CGFloat) -> CGFloat {
  return sqrt((2.0 - t) * t)
}

/// Circular ease-in-out timing function that combines circular ease-in and ease-out
public func SKTTimingFunctionCircularEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 0.5 * (1.0 - sqrt(1.0 - 4.0 * t * t))
  } else {
    return 0.5 * sqrt(-4.0 * t * t + 8.0 * t - 3.0) + 0.5
  }
}

/// Exponential ease-in timing function for dramatic acceleration
public func SKTTimingFunctionExponentialEaseIn(_ t: CGFloat) -> CGFloat {
  return (t == 0.0) ? t : pow(2.0, 10.0 * (t - 1.0))
}

/// Exponential ease-out timing function for dramatic deceleration
public func SKTTimingFunctionExponentialEaseOut(_ t: CGFloat) -> CGFloat {
  return (t == 1.0) ? t : 1.0 - pow(2.0, -10.0 * t)
}

/// Exponential ease-in-out timing function that combines exponential ease-in and ease-out
public func SKTTimingFunctionExponentialEaseInOut(_ t: CGFloat) -> CGFloat {
  if t == 0.0 || t == 1.0 {
    return t
  } else if t < 0.5 {
    return 0.5 * pow(2.0, 20.0 * t - 10.0)
  } else {
    return 1.0 - 0.5 * pow(2.0, -20.0 * t + 10.0)
  }
}

/// Elastic ease-in timing function that overshoots with elastic spring effect
public func SKTTimingFunctionElasticEaseIn(_ t: CGFloat) -> CGFloat {
  return sin(13.0 * π/2 * t) * pow(2.0, 10.0 * (t - 1.0))
}

/// Elastic ease-out timing function that settles with elastic spring effect
public func SKTTimingFunctionElasticEaseOut(_ t: CGFloat) -> CGFloat {
  return sin(-13.0 * π/2 * (t + 1.0)) * pow(2.0, -10.0 * t) + 1.0
}

/// Elastic ease-in-out timing function that combines elastic ease-in and ease-out
public func SKTTimingFunctionElasticEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 0.5 * sin(13.0 * π * t) * pow(2.0, 20.0 * t - 10.0)
  } else {
    return 0.5 * sin(-13.0 * π * t) * pow(2.0, -20.0 * t + 10.0) + 1.0
  }
}

/// Back ease-in timing function that slightly overshoots then reverses
public func SKTTimingFunctionBackEaseIn(_ t: CGFloat) -> CGFloat {
  let s: CGFloat = 1.70158
  return ((s + 1.0) * t - s) * t * t
}

/// Back ease-out timing function that slightly overshoots then settles
public func SKTTimingFunctionBackEaseOut(_ t: CGFloat) -> CGFloat {
  let s: CGFloat = 1.70158
  let f = 1.0 - t
  return 1.0 - ((s + 1.0) * f - s) * f * f
}

/// Back ease-in-out timing function that combines back ease-in and ease-out
public func SKTTimingFunctionBackEaseInOut(_ t: CGFloat) -> CGFloat {
  let s: CGFloat = 1.70158
  if t < 0.5 {
    let f = 2.0 * t
    return 0.5 * ((s + 1.0) * f - s) * f * f
  } else {
    let f = 2.0 * (1.0 - t)
    return 1.0 - 0.5 * ((s + 1.0) * f - s) * f * f
  }
}

/// Extreme back ease-in timing function with more dramatic overshoot
public func SKTTimingFunctionExtremeBackEaseIn(_ t: CGFloat) -> CGFloat {
  return (t * t - sin(t * π)) * t
}

/// Extreme back ease-out timing function with more dramatic settling
public func SKTTimingFunctionExtremeBackEaseOut(_ t: CGFloat) -> CGFloat {
  let f = 1.0 - t
  return 1.0 - (f * f - sin(f * π)) * f
}

/// Extreme back ease-in-out timing function that combines extreme back ease-in and ease-out
public func SKTTimingFunctionExtremeBackEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    let f = 2.0 * t
    return 0.5 * (f * f - sin(f * π)) * f
  } else {
    let f = 2.0 * (1.0 - t)
    return 1.0 - 0.5 * (f * f - sin(f * π)) * f
  }
}

/// Bounce ease-in timing function that bounces at the start
public func SKTTimingFunctionBounceEaseIn(_ t: CGFloat) -> CGFloat {
  return 1.0 - SKTTimingFunctionBounceEaseOut(1.0 - t)
}

/// Bounce ease-out timing function that bounces at the end
public func SKTTimingFunctionBounceEaseOut(_ t: CGFloat) -> CGFloat {
  if t < 1.0 / 2.75 {
    return 7.5625 * t * t
  } else if t < 2.0 / 2.75 {
    let f = t - 1.5 / 2.75
    return 7.5625 * f * f + 0.75
  } else if t < 2.5 / 2.75 {
    let f = t - 2.25 / 2.75
    return 7.5625 * f * f + 0.9375
  } else {
    let f = t - 2.625 / 2.75
    return 7.5625 * f * f + 0.984375
  }
}

/// Bounce ease-in-out timing function that combines bounce ease-in and ease-out
public func SKTTimingFunctionBounceEaseInOut(_ t: CGFloat) -> CGFloat {
  if t < 0.5 {
    return 0.5 * SKTTimingFunctionBounceEaseIn(t * 2.0)
  } else {
    return 0.5 * SKTTimingFunctionBounceEaseOut(t * 2.0 - 1.0) + 0.5
  }
}

/// Smoothstep timing function providing smooth interpolation with zero derivatives at endpoints
public func SKTTimingFunctionSmoothstep(_ t: CGFloat) -> CGFloat {
  return t * t * (3 - 2 * t)
}

/// Creates a custom shake timing function with specified number of oscillations
public func SKTCreateShakeFunction(_ oscillations: Int) -> (CGFloat) -> CGFloat {
  return {t in -pow(2.0, -10.0 * t) * sin(t * π * CGFloat(oscillations) * 2.0) + 1.0}
}
