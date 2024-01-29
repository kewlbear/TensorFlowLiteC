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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240128/TensorFlowLiteC.xcframework.zip", checksum: "4cbd23c507891c6e3abaac329a2efdb0c3b9ec321bc85fb2119323432b47b467"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9806ce11ae8c7418ec867ecbc49cf58f820ce7ff898c0264e9a8397fdb63758"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240128/TensorFlowLiteCMetal.xcframework.zip", checksum: "d29d68228713aa1d35ab62728e7f3e12907edd35a0b0a5ae88a11925817a8732"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
