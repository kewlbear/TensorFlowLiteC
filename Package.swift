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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230917/TensorFlowLiteC.xcframework.zip", checksum: "e01119012091c7e530a9647a3fac5dc47b6df45705ef5352d720fb08dfa4a627"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230917/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74c7eadd600e539e1c0cc18e5230b10f67ef9f394a8d44593fc8726553e6f971"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230917/TensorFlowLiteCMetal.xcframework.zip", checksum: "3562619da9f919b8d371c3a4dd27d7ef1cbc65a604768d698db341fd025ec90c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
