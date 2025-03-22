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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteC.xcframework.zip", checksum: "104dce1861548681056fb2b9051cb88fbceeaf6ed864f0d80549b9ea352cfcf2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "572171c638e757a0f9859fc9ac9ac59d3415c4227310e95dc322a156eaf89d56"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250321/TensorFlowLiteCMetal.xcframework.zip", checksum: "372bb2fc2b34e10702c4e9141d4208620058eda4d06ed703efbf4bfa22082958"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
