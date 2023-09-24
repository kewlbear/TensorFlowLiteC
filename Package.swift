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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230923/TensorFlowLiteC.xcframework.zip", checksum: "d23929d3dc0f25f536999202ad4af03dc4037672ae7b52638bbe24591684d888"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230923/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e18b9cc023bde1ef2743dd3122c60f581fc956f2da8fedc1c600ecae92bcc505"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230923/TensorFlowLiteCMetal.xcframework.zip", checksum: "f3556c6f4cf5c2636cbed8670b66c72e9698c4620a036f084903ab7d683a434b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
