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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteC.xcframework.zip", checksum: "97fc05300a4e226a9bd5af88f05979c6d00436bbe8b45af39fd8f17f3cd04261"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be5f7eebd317aa616c8df94dce13cd972ddf392bdfd48a9d57841912bf6f025b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240205/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0b1ec22e905579cff5f4a091203b1fa5ab4641489efe97bc4720bee226b5ed6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
