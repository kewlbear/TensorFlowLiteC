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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteC.xcframework.zip", checksum: "bd87bae491bc0d6029d203eda6142ae2e8210f76955cc30702bede0b0b113a07"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99e70159b0a26f456dfdc673c5982705da4d3a6fbc044fa50c8672fa75e4df24"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240722/TensorFlowLiteCMetal.xcframework.zip", checksum: "7364a58485966754e1b7c25cf719ad1c0a619154c0956f6e26017abd4939cd14"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
