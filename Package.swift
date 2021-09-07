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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210906/TensorFlowLiteC.xcframework.zip", checksum: "312954d4bd12202bf3d93923b407d95e203b6d00174f5fa1de91be76c81cd010"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210906/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a3551656f63625578ba369a2ec2b1e36c27fd6d111105b2e5528421208d6c341"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210906/TensorFlowLiteCMetal.xcframework.zip", checksum: "fd233f0880435e273849876ef13fa312ff97c0b8657962970783ebec63a0b939"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
