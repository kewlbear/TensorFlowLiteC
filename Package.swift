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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteC.xcframework.zip", checksum: "0dab6385e512a09edc30eecb0f1130beae79f7fe4f425e4d61286636d64dad33"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f016d9d1bb7192df818dd3a8a3b3f820706dd4177c4d6a8208641f42281cdb9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240820/TensorFlowLiteCMetal.xcframework.zip", checksum: "a53bdd33806a9f2a8093fbc7ef03544fc8a637bc047e703fe7f07dfbc315010f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
