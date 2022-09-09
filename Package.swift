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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220908/TensorFlowLiteC.xcframework.zip", checksum: "66d5c50cbed2d4bcf7a9912bba0e368b90fb799ee4fe42aded2613197bfd3c06"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220908/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64bb509450fcc3a3e1e6569c6b2e2f4282dd4924865d86e36afa18d22368dce8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220908/TensorFlowLiteCMetal.xcframework.zip", checksum: "0981b0e553fde2702443e58a937b485f622a180a606988a8f72c8f5a31a97215"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
