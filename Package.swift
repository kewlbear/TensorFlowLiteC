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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteC.xcframework.zip", checksum: "b59472a1b4122fb9d9aea591b88f52f2783889ef6eefeb0d84f799485d2aa7a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6e67a53e55b528ca5a63327cbd5f5601a99862e5178c182cb3e78f6726cdb91d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240615/TensorFlowLiteCMetal.xcframework.zip", checksum: "98baa17af97312b5dec2613af124e972f249a5f809253770b03dd47db8316cc1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
