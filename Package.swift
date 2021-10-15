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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211014/TensorFlowLiteC.xcframework.zip", checksum: "248e2ffcb89e55369b163031fee5b5fd97800f2ce65c454ced491fe9bef79ac4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211014/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a8b293379aae615d365f8a4f3ca8e0ccfe0fac9f0f4977174216b573c0ad97c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211014/TensorFlowLiteCMetal.xcframework.zip", checksum: "77e33a860f1376004e534aa035bc8814cdc56113da47f9bdf4d885478a63abec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
