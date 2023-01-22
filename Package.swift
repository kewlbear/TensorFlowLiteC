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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230121/TensorFlowLiteC.xcframework.zip", checksum: "293acf37433a062ea426a68aa8fecc2fa7a4e598d84e5d1b043c5ab423813dce"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9857aa6835c1c9a8c522ce3e9f03fa892867cbd836bf65fa087936cd81d2579"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230121/TensorFlowLiteCMetal.xcframework.zip", checksum: "05af3d8be1d696517ab7b64d923a01fe11c11973bd74538820aff17f53dc06aa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
