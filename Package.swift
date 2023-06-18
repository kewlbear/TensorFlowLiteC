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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230617/TensorFlowLiteC.xcframework.zip", checksum: "c467173e2d36afd5679988b8759686f99a5136acdad0a626c2b0838daceba425"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230617/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f283f01e82f683e0c03229895764b8af0d86cdbfa5a2979604f3465ffa718adb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230617/TensorFlowLiteCMetal.xcframework.zip", checksum: "642ec9d9c5fc675ac3a690f303fdebf4b5bd5709257c5f31c789f0d337609129"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
