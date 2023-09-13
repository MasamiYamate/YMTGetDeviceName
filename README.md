# YMTGetDeviceName
This framework is get device name from model number.

## Description
Standard UIDevice can only distinguish iPhone or iPad.  
This framework is get device name from model number.

## Installation
### Use Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add https://github.com/MasamiYamate/YMTGetDeviceName
- Select "Up to Next Major" with "5.6.0"

### Use Carthage

Add to Cartfile

```
github "MasamiYamate/YMTGetDeviceName" ~> 5.6.0
```

Execute the following command

```
carthage update --platform iOS --use-xcframeworks
```


### Use CocoaPods with Podfile:

Add to Podfile

```
pod 'YMTGetDeviceName'
```



## How to use
### Import
```ViewController.swift
import YMTGetDeviceName
```

### Get device name
```ViewController.swift
print(YMTGetDeviceName.getDeviceName())
```

## Q&A
### What is the range of supported devices?
Supports iOS devices up to 2023/09/13 (JST)

