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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230618/TensorFlowLiteC.xcframework.zip", checksum: "5104ba75b9943522bd906677d5ebac256c3815e7b2fd1547e15b489150238b6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "145ff477a2d06d94a90f2e06db95d2bce1f4da03f293940581f5275438c0e76f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230618/TensorFlowLiteCMetal.xcframework.zip", checksum: "68589135a9b9e5eb85141ee9fb6455708c62df7470f93a43f28061c988540666"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
