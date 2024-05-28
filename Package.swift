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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteC.xcframework.zip", checksum: "ec8cba3defacc2a39bc0b745d272ae88949413e97b52cac1e11b73d943a59031"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteCCoreML.xcframework.zip", checksum: "580ff815fc3b7b5cfa2598b2ce833c09b4c9868504ee92a0647dbfb82c677568"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240527/TensorFlowLiteCMetal.xcframework.zip", checksum: "7dd35a42d240e72f6c6d3327e6ba0ff1250223372a9af27f2d161917ab413de7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
