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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteC.xcframework.zip", checksum: "d1c06f56ccbb0d8a4d35bbbd329fdd92511ba142676265b8de2a3e2532eab222"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCCoreML.xcframework.zip", checksum: "17730e7e3a69cef320c076d9f242936fc97cba2f41a1687de0d0760ef43a03bf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250128/TensorFlowLiteCMetal.xcframework.zip", checksum: "488a30ee944d0609d9724057c379d394b76be3738eae408553aabf59bd296c06"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
