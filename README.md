# YMTGetDeviceName
This framework is get device name from model number.

## Description
Standard UIDevice can only distinguish iPhone or iPad.  
This framework is get device name from model number.

## Installation
### Use Swift Package Manager

- File > Swift Packages > Add Package Dependency
- Add https://github.com/joeljfischer/YMTGetDeviceName
- Select "Up to Next Major" with "5.10.0"

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
Supports iOS devices up to 2025/09/15

