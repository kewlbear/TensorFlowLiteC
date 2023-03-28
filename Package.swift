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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230327/TensorFlowLiteC.xcframework.zip", checksum: "2fe72e29f65f0e62ab42c64026c0e1066715d953998013a5bb8db271c518b3a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1059e400a64df00cacc87428549d6b1225347ed9295c3b956427429385db5156"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230327/TensorFlowLiteCMetal.xcframework.zip", checksum: "0f9590bc93a5985492443855c4e947e465e36282a05e81ab4f7fbfdf7917c950"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
