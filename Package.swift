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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231007/TensorFlowLiteC.xcframework.zip", checksum: "7ae2cfcd9fac2f0837fe64ae37b4c098a215cacd8377bff1956744ba90da2b4e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231007/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a1569c945ae18502e662308eb585ffc2a58441f776e6a7079bc425f6370337ad"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231007/TensorFlowLiteCMetal.xcframework.zip", checksum: "abf8a7a5e85c938a447d9a0f2bc4e668c58d829c57e06ac6618f5b6b4b6f0ad8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
