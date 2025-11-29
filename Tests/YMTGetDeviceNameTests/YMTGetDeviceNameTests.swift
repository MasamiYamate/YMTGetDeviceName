import XCTest
@testable import YMTGetDeviceName

final class YMTGetDeviceNameTests: XCTestCase {

    // MARK: - iPhone Tests

    func testIPhone17() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_3.deviceName(), "iPhone 17")
    }

    func testIPhone17Pro() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_1.deviceName(), "iPhone 17 Pro")
    }

    func testIPhone17ProMax() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_2.deviceName(), "iPhone 17 Pro Max")
    }

    func testIPhone17Air() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_4.deviceName(), "iPhone 17 Air")
    }

    func testIPhone16e() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone17_5.deviceName(), "iPhone 16e")
    }

    func testIPhone16() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone17_3.deviceName(), "iPhone 16")
    }

    func testIPhone16Plus() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone17_4.deviceName(), "iPhone 16 Plus")
    }

    func testIPhone16Pro() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone17_1.deviceName(), "iPhone 16 Pro")
    }

    func testIPhone16ProMax() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone17_2.deviceName(), "iPhone 16 Pro Max")
    }

    // MARK: - iPad mini Tests

    func testIPadMini7WiFi() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_1.deviceName(), "iPad mini 7th Generation WiFi")
    }

    func testIPadMini7Cellular() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_2.deviceName(), "iPad mini 7th Generation Cellular")
    }

    // MARK: - iPad Air M3 Tests

    func testIPadAir11InchM3WiFi() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_3.deviceName(), "iPad Air 11 inch M3")
    }

    func testIPadAir11InchM3Cellular() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_4.deviceName(), "iPad Air 11 inch M3")
    }

    func testIPadAir13InchM3WiFi() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_5.deviceName(), "iPad Air 13 inch M3")
    }

    func testIPadAir13InchM3Cellular() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_6.deviceName(), "iPad Air 13 inch M3")
    }

    // MARK: - iPad 11th Generation Tests

    func testIPad11thGenWiFi() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_7.deviceName(), "iPad 11th Generation WiFi")
    }

    func testIPad11thGenCellular() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_8.deviceName(), "iPad 11th Generation Cellular")
    }

    // MARK: - iPad Pro M4 Tests

    func testIPadPro11InchM4() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_3.deviceName(), "iPad Pro 11 inch M4")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_4.deviceName(), "iPad Pro 11 inch M4")
    }

    func testIPadPro13InchM4() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_5.deviceName(), "iPad Pro 13 inch M4")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_6.deviceName(), "iPad Pro 13 inch M4")
    }

    // MARK: - Simulator Tests

    func testSimulator() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.i386.deviceName(), "Simulator")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.x86_64.deviceName(), "Simulator")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.arm64.deviceName(), "Simulator")
    }

    // MARK: - Device Code Raw Value Tests

    func testDeviceCodeRawValues() {
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_1.rawValue, "iPhone18,1")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_2.rawValue, "iPhone18,2")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_3.rawValue, "iPhone18,3")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPhone18_4.rawValue, "iPhone18,4")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_1.rawValue, "iPad16,1")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad16_2.rawValue, "iPad16,2")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_3.rawValue, "iPad15,3")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_4.rawValue, "iPad15,4")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_5.rawValue, "iPad15,5")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_6.rawValue, "iPad15,6")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_7.rawValue, "iPad15,7")
        XCTAssertEqual(YMTGetDeviceName.DeviceCode.iPad15_8.rawValue, "iPad15,8")
    }
}
