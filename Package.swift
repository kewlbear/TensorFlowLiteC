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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteC.xcframework.zip", checksum: "0766555a873e61dfdf6bb8435404f7219c8dd9aa835bcbc7ef177f4d56332451"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "96dd0a9d33e0cb60e48da0564a564a51960453c02fc62d37b461ba42743f3be8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231127/TensorFlowLiteCMetal.xcframework.zip", checksum: "d6e4f3cdb2e829b30accbdd9e084014dc7ab48442badafceda00901f87c23b84"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
