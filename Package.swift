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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteC.xcframework.zip", checksum: "205bd9c7b147714594cdcb6688398108fcbae8758509b0f613428a01fbcea689"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCCoreML.xcframework.zip", checksum: "21cde94304d48f9c0582b3f2bc99305efe979e614e4e92cefbe7cad2de84aaab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241017/TensorFlowLiteCMetal.xcframework.zip", checksum: "147ef5b3699968adb49bf3ad60cd2b611317b8d03ed18b14c859cec4f2c60689"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
