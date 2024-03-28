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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteC.xcframework.zip", checksum: "f310e3eef0b129a0473875b800ed12cdcf2ba437f53f30b944ccf29758366158"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "747195b48c3eb5c514c5e2bce529099599c195f2d82a7b9117a17389ba970478"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240327/TensorFlowLiteCMetal.xcframework.zip", checksum: "94fe023e50ecfcaf5c6f56d3b9bd66480e3a3a004fdd075519e3a54a866dba47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
