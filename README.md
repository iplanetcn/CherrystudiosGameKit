CherrystudiosGameKit
---
[![Build Status](https://github.com/iplanetcn/CherrystudiosGameKit/actions/workflows/swift.yml/badge.svg)](https://github.com/iplanetcn/CherrystudiosGameKit/actions/workflows/swift.yml) 
[English](README.md) | [简体中文](README.CN.md)

A Swift package providing helpful game development utilities and extensions for SpriteKit and CoreGraphics.

## Features

- CGVector extensions for common vector operations:
    - Vector math (add, subtract, multiply, divide)
    - Normalization and magnitude control 
    - Angle calculations
    - Distance calculations
    - Vector creation from points and angles

- CGFloat extensions:
    - Random number generation between 0 and 1
    - Conversion between degrees and radians
    - Clamping values between minimum and maximum
    - Linear interpolation (lerp) between values
    - Rounding to decimal places
    - Trigonometric helper functions

- CGPoint extensions:
    - Distance calculations
    - Angle calculations
    - Point creation from angle and distance
    - Linear interpolation between points

- SKNode extensions:
    - Easy positioning and rotation
    - Animation helpers
    - Node hierarchy utilities

- SKAction extensions:
    - Common animation presets
    - Action sequence builders
    - Timing function helpers

## Requirements

- macOS 12.0+
- Swift 5.7+

## Installation

### Swift Package Manager

Add the following dependency to your `Package.swift` file:
```swift
    .package(url: "https://github.com/iplanetcn/CherryStudiosGameKit.git", from: "v1.2.0"),
```

