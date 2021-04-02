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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteC.xcframework.zip", checksum: "235b78213ce97c44faaeb27e6663980996ed27755f1f3d08ca44ebe646b03163"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "672e268e3715db40f81e4207fed561e48010c3970009468605a0dd6a9637ca1c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCMetal.xcframework.zip", checksum: "5802ad07c482930c35eae7e9f93cf824c632bc397c2a6b5589f7b7527fb1865a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
