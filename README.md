# YMTGetDeviceName
This framework is get device name from model number.

## Description
Standard UIDevice can only distinguish iPhone or iPad.  
This framework is get device name from model number.

## Installation
Just add 「YMTGetDeviceName.framework」 foloder to your project.
or
Use CocoaPods with Podfile:

```
pod 'YMTGetDeviceName'
```
## How to use
### Import
#### ・Swift
```ViewController.swift
import YMTGetDeviceName
```
#### ・Objective-C
```ViewController.h
#import <YMTGetDeviceName/YMTGetDeviceName-Swift.h>
```

### Get device name
#### ・Swift
```ViewController.swift
print(YMTGetDeviceName.share.getDeviceName())
```

#### ・Objective-C
```ViewController.m
NSLog(@"%@" , [[YMTGetDeviceName share] getDeviceName]);
```

## Q&A
### What is the range of supported devices?
Supports iOS devices up to September 21, 2018 (JST)

### Error 「dyld: Library not loaded image not found」
Import from 「Embedded Binaries」

### In case of Objective-C project
Build Setting → Build Options → Always Embed Swift Standard Libraries
Set to 「YES」