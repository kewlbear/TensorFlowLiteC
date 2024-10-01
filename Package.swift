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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteC.xcframework.zip", checksum: "eeb2358506797d0ede57cc8d29bfe7d540975a725fd4a9e9cb747fa887038e52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4d70b323785beb6363cf030a01adabf4deed0564acb11fce45b82fe46aa1bffa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240930/TensorFlowLiteCMetal.xcframework.zip", checksum: "82f481b808c20383d621c737e5a197bdd9767bdecbacbe8b0ed29ea8ff080050"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
