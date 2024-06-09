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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteC.xcframework.zip", checksum: "2ecf5fa44f3aac87297ecad3bfce6a8f8304bc5845d0f3d39c3a25e8c38a04f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e34394ff5f35f6778eb73840c77083819b6bed0c587034a6005f4491844a9697"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240608/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c68e2f61d0cc6b14f199bb55565cfdb1113f56e3504f849ca87e39a7ff46a44"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
