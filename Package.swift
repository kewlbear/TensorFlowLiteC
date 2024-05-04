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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteC.xcframework.zip", checksum: "321fcd74978e156a0e6a8d9ab2a23ba729f4235d486908d0e5bb99c1dda8054d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dbce59d74c558025419c866764220478aee1d19ca9ac5a885584c6b9e1837413"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240503/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb73bda318a5fe040b88e9be0e47eba0e0e5c4e2523182077d1586b1234a5e32"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
