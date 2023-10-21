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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231020/TensorFlowLiteC.xcframework.zip", checksum: "0bfa7d314ed70dba676c79f3e3f173b6ba55c905e67d4fb5c4a1d596706de90e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231020/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8c31c1535acb855cac11aa3a33f16c88c992ba06ce4eb1ec0152503a84d152a2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231020/TensorFlowLiteCMetal.xcframework.zip", checksum: "64b6fd45cd139dba1274b5030ad7404d0e58752943711c4e26d00044eab1da49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
