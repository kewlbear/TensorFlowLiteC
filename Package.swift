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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteC.xcframework.zip", checksum: "b8595199342436f7e124a590a61c77fea60983168b04bb4354c6055913b556ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aefea6b98962fc7254f1a2c1a8ed2d1ddf3efbbff497b81a9a3d7162006eb9d2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240421/TensorFlowLiteCMetal.xcframework.zip", checksum: "50856b5b5a672e21ccb3d8c05529bb62ef8423d590f22d8e48677c002f3540d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
