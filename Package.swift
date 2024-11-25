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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteC.xcframework.zip", checksum: "52f3653404472a41fce6417722907b08ea17eb9424a0bb67d110fa88185e3fa4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "772dfbd4398a11ba06e80de1e4d7e684a992e56e48b5ad1691eeca9b17f77298"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241124/TensorFlowLiteCMetal.xcframework.zip", checksum: "4184f8e371c03859918f340c953adbadbe5dc9e8139b0adc0aa0ae9f52e6cc8c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
