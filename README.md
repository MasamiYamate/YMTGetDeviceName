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

### Get device name
#### ・Swift
```ViewController.swift
print(YMTGetDeviceName.share.getDeviceName())
```

## Q&A
### What is the range of supported devices?
Supports iOS devices up to September 26, 2021 (JST)

