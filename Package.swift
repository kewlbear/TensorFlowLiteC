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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteC.xcframework.zip", checksum: "da12fcb03c83dd266c3464081e13d5a290231d1537a57b230ea834a2c17d0998"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cbed1a321dd166a38cc8029eaade45aa16831bec6339b5e383a6789fcf52cd53"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240311/TensorFlowLiteCMetal.xcframework.zip", checksum: "3523a3b17609fa660ed9610156f8412b8dba54cbbf0fa66683de5d3a18111d67"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
