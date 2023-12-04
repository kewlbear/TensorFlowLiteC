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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteC.xcframework.zip", checksum: "8b13d0085f493b6450ca7aec9c08248a4914c24101e5f3e810ec54ba7aaca9ce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteCCoreML.xcframework.zip", checksum: "187ce6206e72958d0f1d4b0b327d5addbbe86caa883fc927bc40e6aa607d9cb0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231203/TensorFlowLiteCMetal.xcframework.zip", checksum: "ec1d6c2b265700ef1acefba89522470ec9de8af7785fbbdc044c4d521a9da974"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
