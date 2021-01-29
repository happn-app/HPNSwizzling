// swift-tools-version:5.0
import PackageDescription


let package = Package(
	name: "HPNSwizzling",
	products: [
		.library(name: "HPNSwizzling", targets: ["HPNSwizzling"])
	],
	targets: [
		.target(name: "HPNSwizzling"),
		.testTarget(name: "HPNSwizzlingTests", dependencies: ["HPNSwizzling"], exclude: ["HPNSwizzlingTests.swift"])
	]
)
