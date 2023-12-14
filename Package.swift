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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteC.xcframework.zip", checksum: "5285204b64656204996471f167f9ca65bbbc06d7e4ea8f27ab3ee69505d4832c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "83ba6fbeb621a595d2dfea4389899bb43065e7f759b004c93dff5a4198ecd8e5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231213/TensorFlowLiteCMetal.xcframework.zip", checksum: "d67072604bcc9204db79b3f67b6681644bd48ae0a90ee2597617706d9b6a7fc5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
