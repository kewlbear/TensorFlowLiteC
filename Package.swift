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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteC.xcframework.zip", checksum: "11bcd7714fe3edb1bb423da2fefaf91a36d247be80aacdda23399f236c5d874a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteCCoreML.xcframework.zip", checksum: "79bc7e92599538cb23aaa08b43919b668bf29a49205f1a361ec2f5e7fa4077f8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240628/TensorFlowLiteCMetal.xcframework.zip", checksum: "07ea86336958d2902521282968ae6b6c885864fcafa1aee6240d9e20b01f5886"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
