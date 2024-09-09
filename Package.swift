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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteC.xcframework.zip", checksum: "c5338584dd2a8277e1afb63dff1503b77907e4b0ad775af61f858601a587e3ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21f07ceaa6f85f04f47a13b75f8bd77c716571cd10cbe5b991064f316a926d2f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240908/TensorFlowLiteCMetal.xcframework.zip", checksum: "36a90ef637f839ef1aa4225d6b605f2e2754d58d8a39000a9a2316be689179c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
