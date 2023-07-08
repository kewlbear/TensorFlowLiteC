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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.13.0/TensorFlowLiteC.xcframework.zip", checksum: "bc9ae8c852392adbfd96e3d594b041b6717e8d33a2324380fec7f5495de0a85f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.13.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b903f6ca61f88330d7506c1b69d25c5783c1e28a6c3444719dd5a06bdcdcb52a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.13.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "6cc118433cce4db49b04e35ce17ca0282c194b7f3062906de34612cae91f653d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
