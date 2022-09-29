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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220928/TensorFlowLiteC.xcframework.zip", checksum: "6afb6c6b9bf7d90e86be721fef282f7d911e024c78e87ebc140ce343742cb35f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8b20c83308e30f33721b6d05f1f18d1b7c741eabb484e26d9ecee2ab035d2583"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220928/TensorFlowLiteCMetal.xcframework.zip", checksum: "a6a27eabfc58de31f399fbdf6c96404d40355820857ae61b46803399e5ab2c46"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
