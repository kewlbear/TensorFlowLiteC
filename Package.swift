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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteC.xcframework.zip", checksum: "60c0b66f46e802291fc6b0df1798f5972c685568300a2a9f70205491170efdb3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "004b34b231d2c3cb81f750ccbd98d813f10f3cf8881af4e745b328a1857dca3e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240928/TensorFlowLiteCMetal.xcframework.zip", checksum: "3555a4cafbe3873ca1c8f2fa333ec9f0c1f10bb5fb056752ce3e1c36b4f839b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
