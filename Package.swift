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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteC.xcframework.zip", checksum: "b7f90da2a281c2e2848c79c4f820aa29d22fa2acf971a6e2d1921673ef5bf6a3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7b51c52f55b1339b7ef3e749f6b873d64cdac9d13a0b1a62d45dc277eb43db80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250504/TensorFlowLiteCMetal.xcframework.zip", checksum: "33e9414d46122d33b4b0288b04166ec6ee0fb31d5c98a75ffb1105b1775ef413"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
