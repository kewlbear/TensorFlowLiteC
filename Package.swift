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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210513/TensorFlowLiteC.xcframework.zip", checksum: "54cf92bc5c47e366d871527cab0fbd1b62f0e4bd1c2644d86513c7f21b5287b2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210513/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6b9d21165a08055b36b6a71705489c00b99b526a9ca3211559dc6fe374289b5c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210513/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4d91fb45febf44655acadab06441ea5bf3ca2f28eba84856d3247f7640721b5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
