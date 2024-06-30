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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteC.xcframework.zip", checksum: "3e230c898c575ffe2aaa20c205f0bc196fc37e36d4fdc0887085d0e620a7f390"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c29bf2244bc34698b1b2d5103ce99006c1db4acf4308467614857a732f18437"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240629/TensorFlowLiteCMetal.xcframework.zip", checksum: "5b57251e7ae896c0becf0f79240bf2fa5b5976a81a89a25138b9f145eefdf3d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
