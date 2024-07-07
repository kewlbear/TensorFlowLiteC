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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteC.xcframework.zip", checksum: "7e8c63cb888ed0dcfc156370fb6ced7ed4032f3ba719c670f1bc4217dc223b15"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteCCoreML.xcframework.zip", checksum: "77fd5bc1f67977dea2a74e141ecb49841bc70d130a657232175cd712eae3e091"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240706/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a90b34bb386c9211aed5da1bae8887c4de2345ce9daf613df8bb178fc727f47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
