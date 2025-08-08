/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

package std.unittest
import std.collection.ArrayList

import std.unittest.diff.AssertPrintable
import std.unittest.common.*
import std.time.DateTime
import std.unittest.common.PrettyText
import std.collection.*
import std.math.abs
import std.runtime.ProcessorInfo
import std.random.Random
import std.unittest.common.Color
import std.convert.Formattable
import std.math.*
import std.runtime.GC
import std.sort.*
import std.sync.AtomicOptionReference
import std.process.Process
import std.unicode.*
import std.unittest.prop_test.*
import std.unittest.common.KeyTags
import std.fs.*
import std.process.*
import std.sync.Semaphore
import std.collection.concurrent.ConcurrentLinkedQueue
import std.sync.ReentrantMutex
import std.unittest.common.optionsInfo
import std.unittest.prop_test.RandomSource
import std.math.round
import std.regex.Regex
import std.convert.Parsable
public import std.unittest.common.Configuration
public import std.unittest.common.ConfigurationKey
public import std.unittest.common.DataProvider
public import std.unittest.common.DataStrategy
public import std.unittest.common.DataShrinker
public import std.unittest.common.registerOptionValidator
public import std.unittest.common.setOptionInfo
public import std.unittest.common.OptionValidity
public import std.unittest.common.KeyFor
public import std.unittest.common.KeyTags
public import std.unittest.prop_test.Arbitrary
public import std.unittest.prop_test.Shrink
public import std.unittest.prop_test.random
public import std.unittest.prop_test.KeyRandom
import std.unittest.mock.PrettyException
import std.fs.Path
import std.unittest.common.PrettyPrinter
import std.collection.concurrent.NonBlockingQueue
import std.env.atExit
import std.sync.AtomicBool
import std.time.MonoTime
import std.time.*
import std.sort.SortExtension
import std.sync.*
import std.unittest.common.DataStrategy
import std.unittest.prop_test.ShrinkHelpers
import std.unittest.common.toStringOrPlaceholder
import std.unittest.mock.*
import std.collection.concurrent.LinkedBlockingQueue
import std.env.exit
import std.env.getTempDirectory
import std.binary.BigEndianOrder
import std.io.IOException
import std.net.*
import std.core.println as corePrintln
import std.core.print as corePrint

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestSuite {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runTests(): TestReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runTests(configuration: Configuration): TestReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runBenchmarks(): BenchReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runBenchmarks(configuration: Configuration): BenchReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func builder(name: String): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func builder(suite: TestSuite): TestSuiteBuilder
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestGroup {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runTests(): TestReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runTests(configuration: Configuration): TestReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runBenchmarks(): BenchReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func runBenchmarks(configuration: Configuration): BenchReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func builder(name: String): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func builder(group: TestGroup): TestGroupBuilder
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestGroupBuilder {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setName(name: String): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func configure(configuration: Configuration): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func add(test: UnitTestCase): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func add(benchmark: Benchmark): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func add(suite: TestSuite): TestGroupBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func build(): TestGroup
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestSuiteBuilder {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setName(name: String): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func configure(configuration: Configuration): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func beforeEach(body: (String) -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func afterEach(body: (String) -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func beforeEach(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func afterEach(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func beforeAll(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func afterAll(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func add(test: UnitTestCase): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func add(benchmark: Benchmark): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func template(template: TestSuite): TestSuiteBuilder
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func build(): TestSuite
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class UnitTestCase {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func run(): TestReport
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createParameterized<T>(name: String, strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createParameterized<T>(name: String, strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(name: String, configuration!: Configuration = Configuration(), body!: () -> Unit): UnitTestCase
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class Benchmark {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func run(): BenchReport
    
    // Creates parameterized benchmark with provided data strategy.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark
    
    // Creates parameterized benchmark with provided data strategy processor.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark
    
    // Creates parameterized benchmark from given lambda.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func create(
        name: String,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: () -> Unit
    ): Benchmark
}

sealed abstract class Report {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop errorCount:   Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop caseCount:    Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop passedCount:  Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop failedCount:  Int64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop skippedCount: Int64
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestReport <: Report {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reportTo<T>(reporter: Reporter<TestReport, T>): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class BenchReport <: Report {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func reportTo<T>(reporter: Reporter<BenchReport, T>): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface TestClass {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func asTestSuite(): TestSuite
}

// NOTE: this class is used internally by the compiler and is considered implementation details
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TestPackage {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public TestPackage(
        let name: String
    )
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func registerCase(testCase: () -> UnitTestCase): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func registerSuite(suite: () -> TestSuite): Unit
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func registerBench(bench: () -> Benchmark): Unit
}


/**
* Checks two values for equality and will throw an exception if the check fails.
*
* @param leftStr string representation of expected.
* @param rightStr string representation of actual.
* @param expected expected value.
* @param actual actual value.
* @param optParentCtx context where fail message is stored

* @throws AssertException If <expected> and <actual> are not equal.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func assertEqual<T>(leftStr: String, rightStr: String, expected: T, actual: T,
    optParentCtx!: ?AssertionCtx = None): Unit where T <: Equatable<T>

/**
* Same as assertEqual but will not throw an exception immediately.
*
* @param leftStr string representation of expected.
* @param rightStr string representation of actual.
* @param expected expected value.
* @param actual actual value.
* @param optParentCtx context where fail message is stored
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func expectEqual<T>(leftStr: String, rightStr: String, expected: T, actual: T,
    optParentCtx!: ?AssertionCtx = None): Unit where T <: Equatable<T>

/**
* The AssertException.
*
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class AssertException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(message: String)
}

/**
* The AssertIntermediateException.
*
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class AssertIntermediateException <: Exception {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let expression: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public let originalException: Exception
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func getOriginalStackTrace(): String
}

// Marker interface to be able to detect BenchInputProvider<T> when we do not know `T`
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface BenchmarkInputMarker {
}

// Interface to handle benchmarks where some code needs to be executed before the benchmark// or input of the benchmark is mutated and has to be generated each time from scratch.
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface BenchInputProvider<T> <: BenchmarkInputMarker {
    // Called before benchmark measurements.// After this function was called, subsequent `get(i)` calls must success for `i` in `0..max`
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func reset(max: Int64): Unit
    
    // Execution time of this function is included in benchmark measurements// and then it is excluded from results as part of framework overhead calculations
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    mut func get(idx: Int64): T
}

// Default and simplest input provider that just copies data for each invokation of the benchmark.
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct ImmutableInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public ImmutableInputProvider(let data: T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func get(_: Int64): T
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createOrExisting(arg: T, x!: Int64 = 0): ImmutableInputProvider<T>
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func createOrExisting<U>(arg: U): U where U <: BenchInputProvider<T>
}

// Input provider that generates input for the whole benchmark batch in a buffer before executing it
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct BatchInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public BatchInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func reset(max: Int64): Unit
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func get(idx: Int64): T
}

// Benchmark input provider that generates input right before each execution of benchmark.// The difference with `GenerateEachInputProvider` is that when batch size is 1 we can measure// each benchmark invocation independently so input generation is never included in the measurements.// Should be used if `GenerateEachInputProvider` gives poor quality results.
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct BatchSizeOneInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public BatchSizeOneInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func reset(max: Int64)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func get(_: Int64): T
}

// Benchmark input provider that generates input right before each execution of benchmark.// Generation time is included in benchmark measurements// and then later it is excluded from results as part of framework overhead calculations.
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct GenerateEachInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public GenerateEachInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func reset(_: Int64)
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public mut func get(_: Int64): T
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface BenchmarkConfig {
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func batchSize(b: Int64): Unit
    
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func batchSize(x: Range<Int64>): Unit
    
    // Corresponds to the warmup parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func warmup(x: Int64): Unit
    
    // Corresponds to the warmup parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func warmup(x: Duration): Unit
    
    // Corresponds to the minDuration parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func minDuration(x: Duration): Unit
    
    // Corresponds to the explicitGC parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func explicitGC(x: ExplicitGcType): Unit
    
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func minBatches(x: Int64): Unit
}

extend Configuration <: BenchmarkConfig {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func batchSize(b: Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func batchSize(x: Range<Int64>)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func warmup(x: Int64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func warmup(x: Duration)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func minDuration(x: Duration)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func explicitGC(x: ExplicitGcType)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func minBatches(x: Int64)
}

/**
* Interface for all kinds of data that can be collected and analyzed during benchmarking.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public interface Measurement {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func setup()
    
    /**
    * @return representation of the measurement data that will be used for statistical analisys
    * and should be suitable for substraction.
    */
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    func measure(): Float64
    
    /**
    * Conversion table for measured values, contains value multipliers mapped to measurement unit representation.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop conversionTable: MeasurementUnitTable
    
    /**
    * Name for this type of measurement. Helps to distinguish between different types of Measurement.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop name: String
    
    /**
    * Simple description of the measurement to be displayed in some reports
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop textDescription: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    prop info: MeasurementInfo
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct MeasurementInfo {
}

public type MeasurementUnitTable = Array<(Float64, String)>



/**
* Measures how much time takes to execute a function.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct TimeNow <: Measurement {
    /**
    * @param unit Allows to specify a unit of time that will be used for printing results.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(unit: ?TimeUnit)
    
    /**
    * Chooses output precision automatically for each case.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func measure(): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop textDescription: String
}

/**
* Used to explicitly specify the time unit used when `TimeNow` prints time.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum TimeUnit <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Nanos |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Micros |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Millis |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    Seconds
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Used to specify what type of GC is invoked by the test framework in benchmarks.
* See std.runtime.GC(heavy: bool) for details about types of GC invokations
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum ExplicitGcType <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // GC is not invoked explicitly
    Disabled |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // GC(heavy: false) is invoked after each batch
    Light |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    // GC(heavy: true) is invoked after each batch
    Heavy
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

// corresponds to HW_REF_CPU_CYCLES Perf measurements
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct CpuCycles <: Measurement {
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func measure(): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setup()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop textDescription: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct Perf <: Measurement {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public Perf(var counter: PerfCounter)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setup()
    
    @Frozen
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func measure(): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop textDescription: String
}

// Detailed cache counters are not supported yet
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public enum PerfCounter <: ToString {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_CPU_CYCLES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_INSTRUCTIONS |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_CACHE_REFERENCES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_CACHE_MISSES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_BRANCH_INSTRUCTIONS |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_BRANCH_MISSES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_BUS_CYCLES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_STALLED_CYCLES_FRONTEND |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_STALLED_CYCLES_BACKEND |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    HW_REF_CPU_CYCLES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_CPU_CLOCK |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_TASK_CLOCK |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_PAGE_FAULTS |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_CONTEXT_SWITCHES |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_CPU_MIGRATIONS |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_PAGE_FAULTS_MIN |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_PAGE_FAULTS_MAJ |
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    SW_EMULATION_FAULTS
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func toString(): String
}

/**
* Assertion context base class
*
* If user wants to create custom assertion he must:
* 1. Annotate function with @CustomAssertion
* 2. Provide `AssertionCtx` as it's FIRST parameter in function parameters list
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class AssertionCtx {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop caller: String
    
    /**
    * Says whether any error occured during run of assertion
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop hasErrors: Bool
    
    /**
    * Unresolved passed arguments getter
    *
    * @param key: String - if matches with value of argument identifier in function declaration, return unresolved argument
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func arg(key: String): String
    
    /**
    * Comma-separated string of arguments
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop args: String
    
    /**
    * Specifies names for accessing unresolved values
    *
    * @param aliases: Array<String> - String aliases for each argument in function declaration.
    *                                 Length of provided array should match with size of paramenter list
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func setArgsAliases(aliases: Array<String>)
    
    /**
    * Stores FailCheckResult in local stacktrace
    *
    * @throws AssertException
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func fail(message: String): Nothing
    
    /**
    * Stores CustomCheckResult in local stacktrace
    *
    * @throws AssertException
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func fail<PP>(pt: PP): Nothing where PP <: PrettyPrintable
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func failExpect(message: String): Unit
    
    /**
    * Stores CustomCheckResult in local stacktrace
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func failExpect<PP>(pt: PP): Unit where PP <: PrettyPrintable
}

/**
* Runs custom assertion specified by @Assert[caller](passedArgs) inside of @Test/@TestCase functions
*
* Used by framework and not considered to be called by end user
*
* @param passedArgs:   Array<String>       - unresolved passed arguments
* @param caller:       String              - name of called custom assertion with generic parameters if such specified
* @param assert:       (AssertionCtx) -> T - capture of invocation of assertion with right arguments
* @param optParentCtx: ?AssertionCtx       - first argument of @CustomAssertion function
*
* @throws AssertException if any occured in nested checks
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func invokeCustomAssert<T>(passedArgs: Array<String>, caller: String, assert: (AssertionCtx) -> T,
    optParentCtx!: ?AssertionCtx = None): T

/**
* Runs custom assertion specified by @Assert[caller](passedArgs) inside of @Test/@TestCase functions
*
* Used by framework and not considered to be called by end user
*
* @param passedArgs:   Array<String>         - unresolved passed arguments
* @param caller:       String                - name of called custom assertion with generic parameters if such specified
* @param expect:       (AssertionCtx) -> Any - capture of invocation of assertion with right arguments
* @param optParentCtx: ?AssertionCtx         - first argument of @CustomAssertion function
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func invokeCustomExpect(passedArgs: Array<String>, caller: String, expect: (AssertionCtx) -> Any,
    optParentCtx!: ?AssertionCtx = None): Unit

/**
* Create default configuration by reading command-line arguments.
* Any command-line argument given to the test will be turned into a field in configuration according to the rules:
* - kebab-case arguments such as --random-seed are turned into camelCase parameters: randomSeed
* - arguments with no values are turned into bool values: --no-color becomes noColor of type Bool and value true
* - the rest are converted according to the following rules, in this order:
*    - `true` and `false` values are Bool: --feel-good=true becomes field feelGood of type Bool and value true
*    - integer number literals are Int64: --random-seed=3 becomes field randomSeed of type Int64 and value 3
*    - float number literals are Float64: --value-pi=3.14 becomes field valuePi of type Float64 and value 3.14
*    - any other values are considered Strings
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func defaultConfiguration(): Configuration


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func entryMain(testPackage: TestPackage): Int64

/*
* Fails the test case.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func failExpect(message: String): Unit

/*
* Immediately fails the test case.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func fail(message: String): Nothing

/*
* Immediately fails the test with message that was caught exception differs from expeted.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func assertCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Nothing

/*
* Fails the test with message that was caught exception differs from expeted.
*/
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public func expectCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Unit



extend UInt8 <: Torcable<UInt8> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(UInt8, UInt8)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: UInt8): ?UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): UInt8
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): UInt8
}

extend UInt16 <: Torcable<UInt16> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(UInt16, UInt16)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: UInt16): ?UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): UInt16
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): UInt16
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func+(arg: UInt8): UInt16
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func-(arg: UInt8): UInt16
}

extend UInt32 <: Torcable<UInt32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(UInt32, UInt32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: UInt32): ?UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): UInt32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): UInt32
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func+(arg: UInt8): UInt32
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func-(arg: UInt8): UInt32
}

extend UInt64 <: Torcable<UInt64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(UInt64, UInt64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: UInt64): ?UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): UInt64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): UInt64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func+(arg: UInt8): UInt64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func-(arg: UInt8): UInt64
}

extend Float32 <: Torcable<Float32> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(Float32, Float32)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: Float32): ?Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): Float32
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): Float32
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func+(arg: UInt8): Float32
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func-(arg: UInt8): Float32
}

extend Float64 <: Torcable<Float64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentEntry(): ?(Float64, Float64)
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func randomRecentValueComparedTo(value: Float64): ?Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func nextFrom(random: Random): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func suggestedFrom(random: Random): Float64
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func isZero()
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func bitFlip(at: UInt8): Float64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func+(arg: UInt8): Float64
    
    @OverflowWrapping
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public operator func-(arg: UInt8): Float64
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyHelp <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop help: KeyHelp
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyNoColor <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop noColor: KeyNoColor
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyFromTopLevel <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop fromTopLevel: KeyFromTopLevel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyRandomSeed <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop randomSeed: KeyRandomSeed
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyWarmup <: KeyFor<Int64> & KeyFor<Duration> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop warmup: KeyWarmup
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyMinDuration <: KeyFor<Duration> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop minDuration: KeyMinDuration
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyExplicitGC <: KeyFor<ExplicitGcType> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop explicitGC: KeyExplicitGC
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyMinBatches <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop minBatches: KeyMinBatches
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyBatchSize <: KeyFor<Int64> & KeyFor<Range<Int64>> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop batchSize: KeyBatchSize
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyParallel <: KeyFor<Bool> & KeyFor<String> & KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop parallel: KeyParallel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyGenerationSteps <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop generationSteps: KeyGenerationSteps
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyReductionSteps <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop reductionSteps: KeyReductionSteps
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeySkip <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop skip: KeySkip
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuided <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuided: KeyCoverageGuided
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuidedInitialSeeds <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuidedInitialSeeds: KeyCoverageGuidedInitialSeeds
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuidedMaxCandidates <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuidedMaxCandidates: KeyCoverageGuidedMaxCandidates
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuidedBaselineScore <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuidedBaselineScore: KeyCoverageGuidedBaselineScore
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuidedNewCoverageScore <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuidedNewCoverageScore: KeyCoverageGuidedNewCoverageScore
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCoverageGuidedNewCoverageBonus <: KeyFor<Int64> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop coverageGuidedNewCoverageBonus: KeyCoverageGuidedNewCoverageBonus
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyBench <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop bench: KeyBench
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyTimeout <: KeyFor<Duration> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop timeout: KeyTimeout
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyTimeoutEach <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop timeoutEach: KeyTimeoutEach
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyCaptureOutput <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop captureOutput: KeyCaptureOutput
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyNoCaptureOutput <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop noCaptureOutput: KeyNoCaptureOutput
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyShowAllOutput <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop showAllOutput: KeyShowAllOutput
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyVerbose <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop verbose: KeyVerbose
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyMeasurement <: KeyFor<Measurement> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop measurement: KeyMeasurement
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyMeasurementInfo <: KeyFor<MeasurementInfo> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop measurementInfo: KeyMeasurementInfo
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyInternalTestrunnerInputPath <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop internalTestrunnerInputPath: KeyInternalTestrunnerInputPath
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyDeathAware <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop deathAware: KeyDeathAware
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyBaseline <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop baseline: KeyBaseline
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyFilter <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop filter: KeyFilter
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyIncludeTags <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop includeTags: KeyIncludeTags
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyExcludeTags <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop excludeTags: KeyExcludeTags
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyReportPath <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop reportPath: KeyReportPath
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyReportFormat <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop reportFormat: KeyReportFormat
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyBaselinePath <: KeyFor<String> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop baselinePath: KeyBaselinePath
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public struct KeyDryRun <: KeyFor<Bool> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static prop dryRun: KeyDryRun
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public prop name: String
}


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class PowerAssertDiagramBuilder {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public init(expression: String)
    
    // Below are shortcuts to reduce the size of generated code by power assertion macro
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func r<T>(value: T, exprAsText: String, position: Int64): T
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func r(value: Rune, exprAsText: String, position: Int64): Rune
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func r(value: String, exprAsText: String, position: Int64): String
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func h(exception: Exception, exprAsText: String, position: Int64): Nothing
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func w(passed: Bool): Unit
}







sealed interface Reporter<TReport, TReturn> {
}

// NOTE: our predefined reporters
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class CsvReporter <: Reporter<BenchReport, Unit> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public CsvReporter(let directory: Path)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class CsvRawReporter <: Reporter<BenchReport, Unit> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public CsvRawReporter(let directory: Path)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class XmlReporter <: Reporter<TestReport, Unit> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public XmlReporter(let directory: Path)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class ConsoleReporter <: Reporter<TestReport, Unit> & Reporter<BenchReport, Unit> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public ConsoleReporter(let colored!: Bool = true)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class TextReporter<PP> <: Reporter<TestReport, PP> & Reporter<BenchReport, PP>
        where PP <: PrettyPrinter {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public TextReporter(let into!: PP)
}

extend <PP> TextReporter<PP> <: TextReporterBase<PP> where PP <: PrettyPrinter {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func printReport(report: Report): PP
}

extend ConsoleReporter <: TextReporterBase<Unit> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func printReport(report: Report): Unit
}

// NOTE: for our internal benchmarks
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class RawStatsReporter <: Reporter<BenchReport, HashMap<String, (Float64, Float64)>> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public RawStatsReporter()
}




extend LStep <: Serializable<LStep> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func serializeInternal(): DataModel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func deserialize(dm: DataModel): LStep
}

extend StepKind <: Serializable<StepKind> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func serializeInternal(): DataModel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func deserialize(dm: DataModel): StepKind
}

extend StepInfo <: Serializable<StepInfo> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func serializeInternal(): DataModel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func deserialize(dm: DataModel): StepInfo
}



extend RenderOptions <: Serializable<RenderOptions> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func serializeInternal(): DataModel
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func deserialize(dm: DataModel): RenderOptions
}

extend Float64 <: AsFloat {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func asFloat(): Float64
}



@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class FlatMapProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class FlatMapStrategyProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class MapProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class CartesianProductProcessor<T0, T1> <: DataStrategyProcessor<(T0, T1)> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public CartesianProductProcessor(let left: DataStrategyProcessor<T0>, let right: DataStrategyProcessor<T1>)
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class SimpleProcessor<T> <: DataStrategyProcessor<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public SimpleProcessor(let buildDelegate: () -> DataStrategy<T>, let name: String)
}

// Intrusive cyclic doubly linked list// Used to advance type-erased internal lazy iterators one after another in a cycle//// Public only due to protected sealed functions being implicitly public
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class LazyCyclicNode {
}

// public only due to protected sealed functions being implicitly public
@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class InputParameter {
}


/**
* Base class for all combinators of `DataStategy`es.
*/
sealed abstract class DataStrategyProcessor<T> {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func intoBenchmark(
        caseName!: String,
        configuration!: Configuration,
        doRun!: (T, Int64, Int64) -> Float64
    ): Benchmark
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func intoUnitTestCase(
        caseName!: String,
        configuration!: Configuration,
        doRun!: (T) -> Unit
    ): UnitTestCase
    
    /** Starting point for combinding/mapping `DataStategy`es.
    *
    *  @param s DataStrategy to wrap
    *  @param name Name of the corresponding parameter in testing report
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func start(s: DataStrategy<T>, name: String): SimpleProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func start<U>(f: () -> DataStrategy<U>, name: String): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>
   
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func start(f: () -> DataStrategy<T>, name: String, x!: Int64 = 0): SimpleProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func start(f: () -> DataStrategyProcessor<T>, _: String): DataStrategyProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public static func start<U>(f: () -> DataStrategyProcessor<U>, _: String, x!: Int64 = 0): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>
   
}

extend<T> DataStrategyProcessor<T> {
    /**
    * "map" combinator that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then mapped.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func map<R>(f: (T) -> R): MapProcessor<T, R>
    
    /**
    * "map" combinator with access to current `Configuration` that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then flat mapped.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func mapWithConfig<R>(f: (T, Configuration) -> R): MapProcessor<T, R>
    
    /**
    * "flat map" combinator that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then flat mapped.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatMap<R>(f: (T) -> DataProvider<R>): FlatMapProcessor<T, R>
    
    /**
    * "flat map" combinator that simply applies `f` to every item of original data strategy.
    * However shrinking is done by returned strategy rather than original input.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func flatMapStrategy<R>(f: (T) -> DataStrategy<R>): FlatMapStrategyProcessor<T, R>
    
    /**
    * Cartesian product combinator. Creates data strategy that contains all possible permutations of elements in original strategies.
    * Shrinking happens on each element of the original strategy independently and uniformly.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func product<R>(p: DataStrategyProcessor<R>): CartesianProductProcessor<T, R>
    
    /**
    * Convenience adapter for `DataStrategyProcessor.product` when second strategy only does side effects.
    * Intended to be used from code generated by `@Test` macro to help with type inference.
    */
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func productWithUnit<P>(p: P): MapProcessor<(T, Unit), T> where P <: DataStrategyProcessor<Unit>
}


extend JsonValue <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}

extend String <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}

extend Int64 <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}

extend<T> Option<T> <: IntoJson where T <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}

extend<T> Array<T> <: IntoJson where T <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}

extend<T> ArrayList<T> <: IntoJson where T <: IntoJson {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func json(): JsonValue
}


/**
* None of these configuration parameters are intended as public API for now.
*/

extend CheckResult <: PrettyPrintable {
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func pprintWithFailedPrefix(pp: PrettyPrinter): PrettyPrinter
    
    @!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
    public func pprint(pp: PrettyPrinter): PrettyPrinter
}


@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public open class UnittestException <: Exception {
}

@!APILevel[21, stagemodeonly : true, syscap : "SystemCapability.Utils.Cangjie"]
public class UnittestCliOptionsFormatException <: UnittestException {
}




