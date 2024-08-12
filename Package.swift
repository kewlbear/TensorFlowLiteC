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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteC.xcframework.zip", checksum: "dd3b1da11902a4508be5889a121b4250b0150578ae3cdb27433a53daae786faa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteCCoreML.xcframework.zip", checksum: "258ad0965f650f32108c4fb43e79767bd6dc7e5023602d612fb1779fe3eac70b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240811/TensorFlowLiteCMetal.xcframework.zip", checksum: "709db68ca3c80f93fa676633d8818cceb18c3a307bdc713ca853274ad037ba2e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
