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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230228/TensorFlowLiteC.xcframework.zip", checksum: "a8aa15b11127b666c96db933804e51a8af18af04251dbec1680f2f8303705214"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230228/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e0bc44c4a532c67676f818d9cfe4179dbfc14c345289bb629e6ab37d5a0f4a27"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230228/TensorFlowLiteCMetal.xcframework.zip", checksum: "3dc882e81f236b2ee8fe399a31e31a81f68516704330ce14dda285e586efd17b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
