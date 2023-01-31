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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230130/TensorFlowLiteC.xcframework.zip", checksum: "991561a38231c7cf061962073d917f8da94a6772f1169d608fee493a36b339c7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f6fd267c5890b1d4d5eb7d3c9a30ecb04c979f9d604bee6bf1b8602ce767a57"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230130/TensorFlowLiteCMetal.xcframework.zip", checksum: "14a0537ba428c8dc5f575f4b0d239fed2f7e115adbd9baf40513de86ac45b0c6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
