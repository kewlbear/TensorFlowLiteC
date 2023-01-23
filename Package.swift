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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230122/TensorFlowLiteC.xcframework.zip", checksum: "d063c61c3de145b45cc4b9a30ddb34d3f6ff4984194b255833bd634ec982f54d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3db4479b6ebab54c4d8e835be3412be6d71840f24356517009ba14b12c5cd774"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230122/TensorFlowLiteCMetal.xcframework.zip", checksum: "0457f2e168fd25f0aadd14ef525f9334329308d4d554733e3f75ceb1a0251831"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
