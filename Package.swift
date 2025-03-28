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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteC.xcframework.zip", checksum: "290707d2806fad7203f752f085c23b7f5c6f3a91c27aba4f5b3f179844b85db3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCCoreML.xcframework.zip", checksum: "10f6f61813bf245cf0c35b4919d3faef762cd37c88c02fcae90a57b0cd50a345"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250327/TensorFlowLiteCMetal.xcframework.zip", checksum: "c69d50ee2751ae95a0a3cc997f041cfcab26822e6141ce8188c65f907f933e5d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
