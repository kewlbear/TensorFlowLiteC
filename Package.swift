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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteC.xcframework.zip", checksum: "fc3d05fa22d5dc587cdf66d1d5530376423d6febe3f12794f1cb0b8afadbae02"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2543383618943230f025fae04e71514bb57e1825e5ed141c7f6d61e43bcecd61"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240314/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0717b1fa1007e09c0e20886be963b6d01c8b32e5e63bb40ba127f4e33f35a93"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
