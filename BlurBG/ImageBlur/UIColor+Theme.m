/*
 * Copyright (c) 2014 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#import "UIColor+Theme.h"

CGFloat const RWTSaturationMultiplier = 1.158f;
CGFloat const RWTBrightnessMultiplier = 0.95f;

@implementation UIColor (Theme)

- (UIColor *)rwt_colorForTranslucency {
  CGFloat hue = 0.0f;
  CGFloat saturation = 0.0f;
  CGFloat brightness = 0.0f;
  CGFloat alpha = 0.0f;
  [self getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha];
  return [UIColor colorWithHue:hue
                    saturation:(saturation * RWTSaturationMultiplier)
                    brightness:(brightness * RWTBrightnessMultiplier)
                         alpha:alpha];
}

+ (UIColor *)rwt_defaultSeparatorColor {
  return RGBA(200.0f, 199.0f, 204.0f, 1.0f);
}

+ (UIColor *)rwt_nightTimeTextBackgroundColor {
  return RGBA(245.0f, 238.0f, 220.0f, 1.0f);
}

+ (UIColor *)rwt_nightTimeTextColor {
  return RGBA(56.0f, 20.0f, 0.0f, 1.0f);
}

+ (UIColor *)rwt_nightTimeTintColor {
  return RGBA(182.0f, 126.0f, 44.0f, 1.0f);
}

@end
