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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221216/TensorFlowLiteC.xcframework.zip", checksum: "a69f3852b121249206fe6f09d1d45ea30f364cc7159d7cc583d61362a2a76e3d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "987f0f108b8210b9b33aeef6b2aaea135079005b705d28c8ca843589d3dacf1b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221216/TensorFlowLiteCMetal.xcframework.zip", checksum: "482e981020edbd6369492069635cbd700f74ead886ca85a164073f1154f799c7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
