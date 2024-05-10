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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteC.xcframework.zip", checksum: "9a09498bcb3cc398c90946b74ce6bdad67a1603a99472ec6bdcfa0a22c76590f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2ea71c9039275f441455fe6cdebcedeb643b8e2cb192621a93349a8892d5deeb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240509/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad833142895c30207bd92e78495fb802a352d5f47c35f25124baa1f51e746afb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
