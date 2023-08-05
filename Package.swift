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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230804/TensorFlowLiteC.xcframework.zip", checksum: "da6477bf711a8ef6f02f308b4d096a1b3f58e5aa0855bc5bbcf24e1943fd7417"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230804/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d4effdf5ada368bac4ab2f998f2bf943e06fc9c106027921ae7383b6d03478f3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230804/TensorFlowLiteCMetal.xcframework.zip", checksum: "06f2790afaa7aeb80cbcf84496b7508dae485a429a35893c600d0f291eba3185"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
