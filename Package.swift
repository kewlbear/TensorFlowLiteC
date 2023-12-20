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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteC.xcframework.zip", checksum: "5a41ca92f22eac3ece9a369671042b60dcd4f972933f5f78bdf098c39f3e2bb8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "66a94ddb61d5760c4cbf6129500f7771d09305af415506d8c26bb6b4ed05daaf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231219/TensorFlowLiteCMetal.xcframework.zip", checksum: "a62434a961c32d1597a59979f83c516ec2a7c59f86f77adbb59a61084451721a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
