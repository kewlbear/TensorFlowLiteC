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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230810/TensorFlowLiteC.xcframework.zip", checksum: "c5711321491d7866b4b599de16983865bd74fd072774c18a1f730e5f8f6f782d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230810/TensorFlowLiteCCoreML.xcframework.zip", checksum: "446780cadd497c22cd2b76dac2fc0441a6defb2ac88a69107a9a84a22d2334d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230810/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe163847b21491cfd6541408ebc713d0337d8254a85bf6c85c8651f4ff4c4bb3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
