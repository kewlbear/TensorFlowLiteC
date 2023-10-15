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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231014/TensorFlowLiteC.xcframework.zip", checksum: "d580a8337fb1085c24d079dbfc1fbf90213ecf0cb8f160061594a8a377052585"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c985dab444e05c42554e09a7521acc91000c8b64b4f5bdd50ccbf8a3a97e122"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231014/TensorFlowLiteCMetal.xcframework.zip", checksum: "f76b7b4a968793e2b7d6118bb41d3004110df2958f2dbe5ef02320a772c04625"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
