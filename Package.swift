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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteC.xcframework.zip", checksum: "4fa6039ec43b3914736e49f48ba9f237862ab329140db21ced92c8cbb8f921eb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d88a96fcf852f991120e1c264a08895133c9381cc5560182774e0b77ca17fe63"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241202/TensorFlowLiteCMetal.xcframework.zip", checksum: "3bf57afd198280442689ec4ef818d8ca70c03733f57a0ab4750ec3069bcd5cbd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
