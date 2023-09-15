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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230914/TensorFlowLiteC.xcframework.zip", checksum: "72eeb97c5a485b90adca06e7e81362bfc94fd06ef7786a57e483fa3e0b751179"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230914/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5bcd1217d8c054c4a7054df48c2921675513ffc642e8b1f4f566ed16423e1774"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230914/TensorFlowLiteCMetal.xcframework.zip", checksum: "c26b70d0c1ebb9fc1ffd00f8e1495410f286ad843300cd03ac8df2a1e743043c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
