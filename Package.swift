// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221014/TensorFlowLiteC.xcframework.zip", checksum: "24dcf49791584e24a40407cdd678ab52f5fc450bdbe5c3cd301f90dd71af27e2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f65c0f70894d135dc43393af1858e5b729e53805e59a27b88555301938b88cba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221014/TensorFlowLiteCMetal.xcframework.zip", checksum: "db9f53109e9215bb8a2d6669544ffc9128d2f7de36275a763aa3e09f9172e450"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
