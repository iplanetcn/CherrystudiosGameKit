# CherrystudiosGameKit

[![Build Status](https://github.com/iplanetcn/CherrystudiosGameKit/actions/workflows/swift.yml/badge.svg)](https://github.com/iplanetcn/CherrystudiosGameKit/actions/workflows/swift.yml)
[English](README.md) | [简体中文](README.CN.md)

一个为SpriteKit和CoreGraphics提供游戏开发实用工具和扩展的工具包。

## 功能特性

- CGVector（向量）扩展，用于常见的向量运算：
    - 向量数学运算（加、减、乘、除）
    - 标准化和大小控制
    - 角度计算
    - 距离计算
    - 从点和角度创建向量

- CGFloat（浮点数）扩展：
    - 生成0到1之间的随机数
    - 角度与弧度之间的转换
    - 在最小值和最大值之间限制数值
    - 线性插值（lerp）计算
    - 小数位数四舍五入
    - 三角函数辅助功能

- CGPoint（点）扩展：
    - 距离计算
    - 角度计算
    - 从角度和距离创建点
    - 点之间的线性插值

- SKNode（节点）扩展：
    - 简便的位置和旋转设置
    - 动画辅助功能
    - 节点层级实用工具

- SKAction（动作）扩展：
    - 常用动画预设
    - 动作序列构建器
    - 时间函数辅助工具

## 系统要求

- macOS 12.0+
- Swift 5.7+

## 安装方法

### Swift包管理器

在你的`Package.swift`文件中添加以下依赖：
```swift
    .package(url: "https://github.com/iplanetcn/CherryStudiosGameKit.git", from: "v1.2.0"),
```

