/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2025. All rights reserved.
 * This source file is part of the Cangjie project, licensed under Apache-2.0
 * with Runtime Library Exception.
 *
 * See https://cangjie-lang.cn/pages/LICENSE for license information.
 */

// The Cangjie API is in Beta. For details on its capabilities and limitations, please refer to the README file of the relevant cangjie wrapper repository.

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

@!APILevel[since: "22"]
public class TestSuite {
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public func runTests(): TestReport
    
    @!APILevel[since: "22"]
    public func runTests(configuration: Configuration): TestReport
    
    @!APILevel[since: "22"]
    public func runBenchmarks(): BenchReport
    
    @!APILevel[since: "22"]
    public func runBenchmarks(configuration: Configuration): BenchReport
    
    @!APILevel[since: "22"]
    public static func builder(name: String): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public static func builder(suite: TestSuite): TestSuiteBuilder
}

@!APILevel[since: "22"]
public class TestGroup {
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public func runTests(): TestReport
    
    @!APILevel[since: "22"]
    public func runTests(configuration: Configuration): TestReport
    
    @!APILevel[since: "22"]
    public func runBenchmarks(): BenchReport
    
    @!APILevel[since: "22"]
    public func runBenchmarks(configuration: Configuration): BenchReport
    
    @!APILevel[since: "22"]
    public static func builder(name: String): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public static func builder(group: TestGroup): TestGroupBuilder
}

@!APILevel[since: "22"]
public class TestGroupBuilder {
    @!APILevel[since: "22"]
    public func setName(name: String): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public func configure(configuration: Configuration): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public func add(test: UnitTestCase): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public func add(benchmark: Benchmark): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public func add(suite: TestSuite): TestGroupBuilder
    
    @!APILevel[since: "22"]
    public func build(): TestGroup
}

@!APILevel[since: "22"]
public class TestSuiteBuilder {
    @!APILevel[since: "22"]
    public func setName(name: String): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func configure(configuration: Configuration): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func beforeEach(body: (String) -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func afterEach(body: (String) -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func beforeEach(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func afterEach(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func beforeAll(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func afterAll(body: () -> Unit): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func add(test: UnitTestCase): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func add(benchmark: Benchmark): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func template(template: TestSuite): TestSuiteBuilder
    
    @!APILevel[since: "22"]
    public func build(): TestSuite
}

@!APILevel[since: "22"]
public class UnitTestCase {
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public func run(): TestReport
    
    @!APILevel[since: "22"]
    public static func createParameterized<T>(name: String, strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
    
    @!APILevel[since: "22"]
    public static func createParameterized<T>(name: String, strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
    
    @!APILevel[since: "22"]
    public static func create(name: String, configuration!: Configuration = Configuration(), body!: () -> Unit): UnitTestCase
}

@!APILevel[since: "22"]
public class Benchmark {
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public func run(): BenchReport
    
    // Creates parameterized benchmark with provided data strategy.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[since: "22"]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategy<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark
    
    // Creates parameterized benchmark with provided data strategy processor.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[since: "22"]
    public static func createParameterized<T>(
        name: String,
        strategy: DataStrategyProcessor<T>,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: (T) -> Unit
    ): Benchmark
    
    // Creates parameterized benchmark from given lambda.//// Note: this api is inferior to @Bench macro because it uses lambda which can cause undesired overhead.// It should not be used for micro benchmarks.
    @!APILevel[since: "22"]
    public static func create(
        name: String,
        configuration!: Configuration = Configuration(),
        measurement!: Measurement = TimeNow(),
        body!: () -> Unit
    ): Benchmark
}

sealed abstract class Report {
    @!APILevel[since: "22"]
    public prop errorCount:   Int64
    
    @!APILevel[since: "22"]
    public prop caseCount:    Int64
    
    @!APILevel[since: "22"]
    public prop passedCount:  Int64
    
    @!APILevel[since: "22"]
    public prop failedCount:  Int64
    
    @!APILevel[since: "22"]
    public prop skippedCount: Int64
}

@!APILevel[since: "22"]
public class TestReport <: Report {
    @!APILevel[since: "22"]
    public func reportTo<T>(reporter: Reporter<TestReport, T>): T
}

@!APILevel[since: "22"]
public class BenchReport <: Report {
    @!APILevel[since: "22"]
    public func reportTo<T>(reporter: Reporter<BenchReport, T>): T
}

@!APILevel[since: "22"]
public interface TestClass {
    @!APILevel[since: "22"]
    func asTestSuite(): TestSuite
}

// NOTE: this class is used internally by the compiler and is considered implementation details
@!APILevel[since: "22"]
public class TestPackage {
    @!APILevel[since: "22"]
    public TestPackage(
        let name: String
    )
    
    @!APILevel[since: "22"]
    public func registerCase(testCase: () -> UnitTestCase): Unit
    
    @!APILevel[since: "22"]
    public func registerSuite(suite: () -> TestSuite): Unit
    
    @!APILevel[since: "22"]
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
@!APILevel[since: "22"]
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
@!APILevel[since: "22"]
public func expectEqual<T>(leftStr: String, rightStr: String, expected: T, actual: T,
    optParentCtx!: ?AssertionCtx = None): Unit where T <: Equatable<T>

/**
* The AssertException.
*
*/
@!APILevel[since: "22"]
public class AssertException <: Exception {
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public init(message: String)
}

/**
* The AssertIntermediateException.
*
*/
@!APILevel[since: "22"]
public class AssertIntermediateException <: Exception {
    @!APILevel[since: "22"]
    public let expression: String
    
    @!APILevel[since: "22"]
    public let originalException: Exception
    
    @!APILevel[since: "22"]
    public func getOriginalStackTrace(): String
}

// Marker interface to be able to detect BenchInputProvider<T> when we do not know `T`
@!APILevel[since: "22"]
public interface BenchmarkInputMarker {
}

// Interface to handle benchmarks where some code needs to be executed before the benchmark// or input of the benchmark is mutated and has to be generated each time from scratch.
@!APILevel[since: "22"]
public interface BenchInputProvider<T> <: BenchmarkInputMarker {
    // Called before benchmark measurements.// After this function was called, subsequent `get(i)` calls must success for `i` in `0..max`
    @Frozen
    @!APILevel[since: "22"]
    mut func reset(max: Int64): Unit
    
    // Execution time of this function is included in benchmark measurements// and then it is excluded from results as part of framework overhead calculations
    @Frozen
    @!APILevel[since: "22"]
    mut func get(idx: Int64): T
}

// Default and simplest input provider that just copies data for each invokation of the benchmark.
@!APILevel[since: "22"]
public struct ImmutableInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[since: "22"]
    public ImmutableInputProvider(let data: T)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func get(_: Int64): T
    
    @Frozen
    @!APILevel[since: "22"]
    public static func createOrExisting(arg: T, x!: Int64 = 0): ImmutableInputProvider<T>
    
    @Frozen
    @!APILevel[since: "22"]
    public static func createOrExisting<U>(arg: U): U where U <: BenchInputProvider<T>
}

// Input provider that generates input for the whole benchmark batch in a buffer before executing it
@!APILevel[since: "22"]
public struct BatchInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[since: "22"]
    public BatchInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func reset(max: Int64): Unit
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func get(idx: Int64): T
}

// Benchmark input provider that generates input right before each execution of benchmark.// The difference with `GenerateEachInputProvider` is that when batch size is 1 we can measure// each benchmark invocation independently so input generation is never included in the measurements.// Should be used if `GenerateEachInputProvider` gives poor quality results.
@!APILevel[since: "22"]
public struct BatchSizeOneInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[since: "22"]
    public BatchSizeOneInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func reset(max: Int64)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func get(_: Int64): T
}

// Benchmark input provider that generates input right before each execution of benchmark.// Generation time is included in benchmark measurements// and then later it is excluded from results as part of framework overhead calculations.
@!APILevel[since: "22"]
public struct GenerateEachInputProvider<T> <: BenchInputProvider<T> {
    @!APILevel[since: "22"]
    public GenerateEachInputProvider(let builder: () -> T)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func reset(_: Int64)
    
    @Frozen
    @!APILevel[since: "22"]
    public mut func get(_: Int64): T
}

@!APILevel[since: "22"]
public interface BenchmarkConfig {
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[since: "22"]
    func batchSize(b: Int64): Unit
    
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[since: "22"]
    func batchSize(x: Range<Int64>): Unit
    
    // Corresponds to the warmup parameter of @Configure macro
    @!APILevel[since: "22"]
    func warmup(x: Int64): Unit
    
    // Corresponds to the warmup parameter of @Configure macro
    @!APILevel[since: "22"]
    func warmup(x: Duration): Unit
    
    // Corresponds to the minDuration parameter of @Configure macro
    @!APILevel[since: "22"]
    func minDuration(x: Duration): Unit
    
    // Corresponds to the explicitGC parameter of @Configure macro
    @!APILevel[since: "22"]
    func explicitGC(x: ExplicitGcType): Unit
    
    // Corresponds to the batchSize parameter of @Configure macro
    @!APILevel[since: "22"]
    func minBatches(x: Int64): Unit
}

extend Configuration <: BenchmarkConfig {
    @!APILevel[since: "22"]
    public func batchSize(b: Int64): Unit
    
    @!APILevel[since: "22"]
    public func batchSize(x: Range<Int64>): Unit
    
    @!APILevel[since: "22"]
    public func warmup(x: Int64): Unit
    
    @!APILevel[since: "22"]
    public func warmup(x: Duration): Unit
    
    @!APILevel[since: "22"]
    public func minDuration(x: Duration): Unit
    
    @!APILevel[since: "22"]
    public func explicitGC(x: ExplicitGcType): Unit
    
    @!APILevel[since: "22"]
    public func minBatches(x: Int64): Unit
}

/**
* Interface for all kinds of data that can be collected and analyzed during benchmarking.
*/
@!APILevel[since: "22"]
public interface Measurement {
    @!APILevel[since: "22"]
    func setup(): Unit
    
    /**
    * @return representation of the measurement data that will be used for statistical analisys
    * and should be suitable for substraction.
    */
    @Frozen
    @!APILevel[since: "22"]
    func measure(): Float64
    
    /**
    * Conversion table for measured values, contains value multipliers mapped to measurement unit representation.
    */
    @!APILevel[since: "22"]
    prop conversionTable: MeasurementUnitTable
    
    /**
    * Name for this type of measurement. Helps to distinguish between different types of Measurement.
    */
    @!APILevel[since: "22"]
    prop name: String
    
    /**
    * Simple description of the measurement to be displayed in some reports
    */
    @!APILevel[since: "22"]
    prop textDescription: String
    
    @!APILevel[since: "22"]
    prop info: MeasurementInfo
}

@!APILevel[since: "22"]
public struct MeasurementInfo {
}

public type MeasurementUnitTable = Array<(Float64, String)>



/**
* Measures how much time takes to execute a function.
*/
@!APILevel[since: "22"]
public struct TimeNow <: Measurement {
    /**
    * @param unit Allows to specify a unit of time that will be used for printing results.
    */
    @!APILevel[since: "22"]
    public init(unit: ?TimeUnit)
    
    /**
    * Chooses output precision automatically for each case.
    */
    @!APILevel[since: "22"]
    public init()
    
    @Frozen
    @!APILevel[since: "22"]
    public func measure(): Float64
    
    @!APILevel[since: "22"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public prop textDescription: String
}

/**
* Used to explicitly specify the time unit used when `TimeNow` prints time.
*/
@!APILevel[since: "22"]
public enum TimeUnit <: ToString {
    @!APILevel[since: "22"]
    Nanos |
    @!APILevel[since: "22"]
    Micros |
    @!APILevel[since: "22"]
    Millis |
    @!APILevel[since: "22"]
    Seconds
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Used to specify what type of GC is invoked by the test framework in benchmarks.
* See std.runtime.GC(heavy: bool) for details about types of GC invokations
*/
@!APILevel[since: "22"]
public enum ExplicitGcType <: ToString {
    @!APILevel[since: "22"]
    // GC is not invoked explicitly
    Disabled |
    @!APILevel[since: "22"]
    // GC(heavy: false) is invoked after each batch
    Light |
    @!APILevel[since: "22"]
    // GC(heavy: true) is invoked after each batch
    Heavy
    @!APILevel[since: "22"]
    public func toString(): String
}

// corresponds to HW_REF_CPU_CYCLES Perf measurements
@!APILevel[since: "22"]
public struct CpuCycles <: Measurement {
    @Frozen
    @!APILevel[since: "22"]
    public func measure(): Float64
    
    @!APILevel[since: "22"]
    public func setup(): Unit
    
    @!APILevel[since: "22"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public prop textDescription: String
}

@!APILevel[since: "22"]
public struct Perf <: Measurement {
    @!APILevel[since: "22"]
    public Perf(var counter: PerfCounter)
    
    @!APILevel[since: "22"]
    public init()
    
    @!APILevel[since: "22"]
    public func setup():Unit
    
    @Frozen
    @!APILevel[since: "22"]
    public func measure(): Float64
    
    @!APILevel[since: "22"]
    public prop conversionTable: MeasurementUnitTable
    
    @!APILevel[since: "22"]
    public prop name: String
    
    @!APILevel[since: "22"]
    public prop textDescription: String
}

// Detailed cache counters are not supported yet
@!APILevel[since: "22"]
public enum PerfCounter <: ToString {
    @!APILevel[since: "22"]
    HW_CPU_CYCLES |
    @!APILevel[since: "22"]
    HW_INSTRUCTIONS |
    @!APILevel[since: "22"]
    HW_CACHE_REFERENCES |
    @!APILevel[since: "22"]
    HW_CACHE_MISSES |
    @!APILevel[since: "22"]
    HW_BRANCH_INSTRUCTIONS |
    @!APILevel[since: "22"]
    HW_BRANCH_MISSES |
    @!APILevel[since: "22"]
    HW_BUS_CYCLES |
    @!APILevel[since: "22"]
    HW_STALLED_CYCLES_FRONTEND |
    @!APILevel[since: "22"]
    HW_STALLED_CYCLES_BACKEND |
    @!APILevel[since: "22"]
    HW_REF_CPU_CYCLES |
    @!APILevel[since: "22"]
    SW_CPU_CLOCK |
    @!APILevel[since: "22"]
    SW_TASK_CLOCK |
    @!APILevel[since: "22"]
    SW_PAGE_FAULTS |
    @!APILevel[since: "22"]
    SW_CONTEXT_SWITCHES |
    @!APILevel[since: "22"]
    SW_CPU_MIGRATIONS |
    @!APILevel[since: "22"]
    SW_PAGE_FAULTS_MIN |
    @!APILevel[since: "22"]
    SW_PAGE_FAULTS_MAJ |
    @!APILevel[since: "22"]
    SW_EMULATION_FAULTS
    @!APILevel[since: "22"]
    public func toString(): String
}

/**
* Assertion context base class
*
* If user wants to create custom assertion he must:
* 1. Annotate function with @CustomAssertion
* 2. Provide `AssertionCtx` as it's FIRST parameter in function parameters list
*/
@!APILevel[since: "22"]
public class AssertionCtx {
    @!APILevel[since: "22"]
    public prop caller: String
    
    /**
    * Says whether any error occured during run of assertion
    */
    @!APILevel[since: "22"]
    public prop hasErrors: Bool
    
    /**
    * Unresolved passed arguments getter
    *
    * @param key: String - if matches with value of argument identifier in function declaration, return unresolved argument
    */
    @!APILevel[since: "22"]
    public func arg(key: String): String
    
    /**
    * Comma-separated string of arguments
    */
    @!APILevel[since: "22"]
    public prop args: String
    
    /**
    * Specifies names for accessing unresolved values
    *
    * @param aliases: Array<String> - String aliases for each argument in function declaration.
    *                                 Length of provided array should match with size of paramenter list
    */
    @!APILevel[since: "22"]
    public func setArgsAliases(aliases: Array<String>): Unit
    
    /**
    * Stores FailCheckResult in local stacktrace
    *
    * @throws AssertException
    */
    @!APILevel[since: "22"]
    public func fail(message: String): Nothing
    
    /**
    * Stores CustomCheckResult in local stacktrace
    *
    * @throws AssertException
    */
    @!APILevel[since: "22"]
    public func fail<PP>(pt: PP): Nothing where PP <: PrettyPrintable
    
    @!APILevel[since: "22"]
    public func failExpect(message: String): Unit
    
    /**
    * Stores CustomCheckResult in local stacktrace
    */
    @!APILevel[since: "22"]
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
@!APILevel[since: "22"]
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
@!APILevel[since: "22"]
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
@!APILevel[since: "22"]
public func defaultConfiguration(): Configuration


@!APILevel[since: "22"]
public func entryMain(testPackage: TestPackage): Int64

/*
* Fails the test case.
*/
@!APILevel[since: "22"]
public func failExpect(message: String): Unit

/*
* Immediately fails the test case.
*/
@!APILevel[since: "22"]
public func fail(message: String): Nothing

/*
* Immediately fails the test with message that was caught exception differs from expeted.
*/
@!APILevel[since: "22"]
public func assertCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Nothing

/*
* Fails the test with message that was caught exception differs from expeted.
*/
@!APILevel[since: "22"]
public func expectCaughtUnexpectedE(
    message: String,
    expectedExceptions: String,
    caughtException: String,
    optParentCtx!: ?AssertionCtx = None
): Unit



extend UInt8 <: Torcable<UInt8> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(UInt8, UInt8)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: UInt8): ?UInt8
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): UInt8
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): UInt8
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): UInt8
}

extend UInt16 <: Torcable<UInt16> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(UInt16, UInt16)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: UInt16): ?UInt16
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): UInt16
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): UInt16
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): UInt16
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func+(arg: UInt8): UInt16
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func-(arg: UInt8): UInt16
}

extend UInt32 <: Torcable<UInt32> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(UInt32, UInt32)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: UInt32): ?UInt32
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): UInt32
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): UInt32
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): UInt32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func+(arg: UInt8): UInt32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func-(arg: UInt8): UInt32
}

extend UInt64 <: Torcable<UInt64> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(UInt64, UInt64)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: UInt64): ?UInt64
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): UInt64
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): UInt64
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): UInt64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func+(arg: UInt8): UInt64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func-(arg: UInt8): UInt64
}

extend Float32 <: Torcable<Float32> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(Float32, Float32)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: Float32): ?Float32
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): Float32
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): Float32
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): Float32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func+(arg: UInt8): Float32
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func-(arg: UInt8): Float32
}

extend Float64 <: Torcable<Float64> {
    @!APILevel[since: "22"]
    public static func randomRecentEntry(): ?(Float64, Float64)
    
    @!APILevel[since: "22"]
    public static func randomRecentValueComparedTo(value: Float64): ?Float64
    
    @!APILevel[since: "22"]
    public static func nextFrom(random: Random): Float64
    
    @!APILevel[since: "22"]
    public static func suggestedFrom(random: Random): Float64
    
    @!APILevel[since: "22"]
    public func isZero(): Bool
    
    @!APILevel[since: "22"]
    public func bitFlip(at: UInt8): Float64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func+(arg: UInt8): Float64
    
    @OverflowWrapping
    @!APILevel[since: "22"]
    public operator func-(arg: UInt8): Float64
}

@!APILevel[since: "22"]
public struct KeyHelp <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop help: KeyHelp
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyNoColor <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop noColor: KeyNoColor
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyFromTopLevel <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop fromTopLevel: KeyFromTopLevel
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyRandomSeed <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop randomSeed: KeyRandomSeed
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyWarmup <: KeyFor<Int64> & KeyFor<Duration> {
    @!APILevel[since: "22"]
    public static prop warmup: KeyWarmup
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyMinDuration <: KeyFor<Duration> {
    @!APILevel[since: "22"]
    public static prop minDuration: KeyMinDuration
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyExplicitGC <: KeyFor<ExplicitGcType> {
    @!APILevel[since: "22"]
    public static prop explicitGC: KeyExplicitGC
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyMinBatches <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop minBatches: KeyMinBatches
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyBatchSize <: KeyFor<Int64> & KeyFor<Range<Int64>> {
    @!APILevel[since: "22"]
    public static prop batchSize: KeyBatchSize
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyParallel <: KeyFor<Bool> & KeyFor<String> & KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop parallel: KeyParallel
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyGenerationSteps <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop generationSteps: KeyGenerationSteps
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyReductionSteps <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop reductionSteps: KeyReductionSteps
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeySkip <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop skip: KeySkip
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuided <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop coverageGuided: KeyCoverageGuided
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuidedInitialSeeds <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop coverageGuidedInitialSeeds: KeyCoverageGuidedInitialSeeds
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuidedMaxCandidates <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop coverageGuidedMaxCandidates: KeyCoverageGuidedMaxCandidates
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuidedBaselineScore <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop coverageGuidedBaselineScore: KeyCoverageGuidedBaselineScore
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuidedNewCoverageScore <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop coverageGuidedNewCoverageScore: KeyCoverageGuidedNewCoverageScore
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCoverageGuidedNewCoverageBonus <: KeyFor<Int64> {
    @!APILevel[since: "22"]
    public static prop coverageGuidedNewCoverageBonus: KeyCoverageGuidedNewCoverageBonus
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyBench <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop bench: KeyBench
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyTimeout <: KeyFor<Duration> {
    @!APILevel[since: "22"]
    public static prop timeout: KeyTimeout
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyTimeoutEach <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop timeoutEach: KeyTimeoutEach
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyCaptureOutput <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop captureOutput: KeyCaptureOutput
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyNoCaptureOutput <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop noCaptureOutput: KeyNoCaptureOutput
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyShowAllOutput <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop showAllOutput: KeyShowAllOutput
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyVerbose <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop verbose: KeyVerbose
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyMeasurement <: KeyFor<Measurement> {
    @!APILevel[since: "22"]
    public static prop measurement: KeyMeasurement
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyMeasurementInfo <: KeyFor<MeasurementInfo> {
    @!APILevel[since: "22"]
    public static prop measurementInfo: KeyMeasurementInfo
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyInternalTestrunnerInputPath <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop internalTestrunnerInputPath: KeyInternalTestrunnerInputPath
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyDeathAware <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop deathAware: KeyDeathAware
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyBaseline <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop baseline: KeyBaseline
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyFilter <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop filter: KeyFilter
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyIncludeTags <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop includeTags: KeyIncludeTags
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyExcludeTags <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop excludeTags: KeyExcludeTags
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyReportPath <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop reportPath: KeyReportPath
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyReportFormat <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop reportFormat: KeyReportFormat
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyBaselinePath <: KeyFor<String> {
    @!APILevel[since: "22"]
    public static prop baselinePath: KeyBaselinePath
    
    @!APILevel[since: "22"]
    public prop name: String
}

@!APILevel[since: "22"]
public struct KeyDryRun <: KeyFor<Bool> {
    @!APILevel[since: "22"]
    public static prop dryRun: KeyDryRun
    
    @!APILevel[since: "22"]
    public prop name: String
}


@!APILevel[since: "22"]
public class PowerAssertDiagramBuilder {
    @!APILevel[since: "22"]
    public init(expression: String)
    
    // Below are shortcuts to reduce the size of generated code by power assertion macro
    @!APILevel[since: "22"]
    public func r<T>(value: T, exprAsText: String, position: Int64): T
    
    @!APILevel[since: "22"]
    public func r(value: Rune, exprAsText: String, position: Int64): Rune
    
    @!APILevel[since: "22"]
    public func r(value: String, exprAsText: String, position: Int64): String
    
    @!APILevel[since: "22"]
    public func h(exception: Exception, exprAsText: String, position: Int64): Nothing
    
    @!APILevel[since: "22"]
    public func w(passed: Bool): Unit
}







sealed interface Reporter<TReport, TReturn> {
}

// NOTE: our predefined reporters
@!APILevel[since: "22"]
public class CsvReporter <: Reporter<BenchReport, Unit> {
    @!APILevel[since: "22"]
    public CsvReporter(let directory: Path)
}

@!APILevel[since: "22"]
public class CsvRawReporter <: Reporter<BenchReport, Unit> {
    @!APILevel[since: "22"]
    public CsvRawReporter(let directory: Path)
}

@!APILevel[since: "22"]
public class XmlReporter <: Reporter<TestReport, Unit> {
    @!APILevel[since: "22"]
    public XmlReporter(let directory: Path)
}

@!APILevel[since: "22"]
public class ConsoleReporter <: Reporter<TestReport, Unit> & Reporter<BenchReport, Unit> {
    @!APILevel[since: "22"]
    public ConsoleReporter(let colored!: Bool = true)
}

@!APILevel[since: "22"]
public class TextReporter<PP> <: Reporter<TestReport, PP> & Reporter<BenchReport, PP>
        where PP <: PrettyPrinter {
    @!APILevel[since: "22"]
    public TextReporter(let into!: PP)
}

extend <PP> TextReporter<PP> <: TextReporterBase<PP> where PP <: PrettyPrinter {
    @!APILevel[since: "22"]
    public func printReport(report: Report): PP
}

extend ConsoleReporter <: TextReporterBase<Unit> {
    @!APILevel[since: "22"]
    public func printReport(report: Report): Unit
}

// NOTE: for our internal benchmarks
@!APILevel[since: "22"]
public class RawStatsReporter <: Reporter<BenchReport, HashMap<String, (Float64, Float64)>> {
    @!APILevel[since: "22"]
    public RawStatsReporter()
}




extend LStep <: Serializable<LStep> {
    @!APILevel[since: "22"]
    public func serializeInternal(): DataModel
    
    @!APILevel[since: "22"]
    public static func deserialize(dm: DataModel): LStep
}

extend StepKind <: Serializable<StepKind> {
    @!APILevel[since: "22"]
    public func serializeInternal(): DataModel
    
    @!APILevel[since: "22"]
    public static func deserialize(dm: DataModel): StepKind
}

extend StepInfo <: Serializable<StepInfo> {
    @!APILevel[since: "22"]
    public func serializeInternal(): DataModel
    
    @!APILevel[since: "22"]
    public static func deserialize(dm: DataModel): StepInfo
}



extend RenderOptions <: Serializable<RenderOptions> {
    @!APILevel[since: "22"]
    public func serializeInternal(): DataModel
    
    @!APILevel[since: "22"]
    public static func deserialize(dm: DataModel): RenderOptions
}

extend Float64 <: AsFloat {
    @!APILevel[since: "22"]
    public func asFloat(): Float64
}



@!APILevel[since: "22"]
public class FlatMapProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[since: "22"]
public class FlatMapStrategyProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[since: "22"]
public class MapProcessor<T, R> <: DataStrategyProcessor<R> {
}

@!APILevel[since: "22"]
public class CartesianProductProcessor<T0, T1> <: DataStrategyProcessor<(T0, T1)> {
    @!APILevel[since: "22"]
    public CartesianProductProcessor(let left: DataStrategyProcessor<T0>, let right: DataStrategyProcessor<T1>)
}

@!APILevel[since: "22"]
public class SimpleProcessor<T> <: DataStrategyProcessor<T> {
    @!APILevel[since: "22"]
    public SimpleProcessor(let buildDelegate: () -> DataStrategy<T>, let name: String)
}

// Intrusive cyclic doubly linked list// Used to advance type-erased internal lazy iterators one after another in a cycle//// Public only due to protected sealed functions being implicitly public
@!APILevel[since: "22"]
public open class LazyCyclicNode {
}

// public only due to protected sealed functions being implicitly public
@!APILevel[since: "22"]
public class InputParameter {
}


/**
* Base class for all combinators of `DataStategy`es.
*/
sealed abstract class DataStrategyProcessor<T> {
    @!APILevel[since: "22"]
    public func intoBenchmark(
        caseName!: String,
        configuration!: Configuration,
        doRun!: (T, Int64, Int64) -> Float64
    ): Benchmark
    
    @!APILevel[since: "22"]
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
    @!APILevel[since: "22"]
    public static func start(s: DataStrategy<T>, name: String): SimpleProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[since: "22"]
    public static func start<U>(f: () -> DataStrategy<U>, name: String): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>
   
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[since: "22"]
    public static func start(f: () -> DataStrategy<T>, name: String, x!: Int64 = 0): SimpleProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[since: "22"]
    public static func start(f: () -> DataStrategyProcessor<T>, _: String): DataStrategyProcessor<T>
    
    // Overload used for type checking and lazy creation inside macro generated code
    @!APILevel[since: "22"]
    public static func start<U>(f: () -> DataStrategyProcessor<U>, _: String, x!: Int64 = 0): DataStrategyProcessor<U>
        where U <: BenchInputProvider<T>
   
}

extend<T> DataStrategyProcessor<T> {
    /**
    * "map" combinator that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then mapped.
    */
    @!APILevel[since: "22"]
    public func map<R>(f: (T) -> R): MapProcessor<T, R>
    
    /**
    * "map" combinator with access to current `Configuration` that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then flat mapped.
    */
    @!APILevel[since: "22"]
    public func mapWithConfig<R>(f: (T, Configuration) -> R): MapProcessor<T, R>
    
    /**
    * "flat map" combinator that simply applies `f` to every item of original data strategy.
    * Shrinking also happens on original input and then flat mapped.
    */
    @!APILevel[since: "22"]
    public func flatMap<R>(f: (T) -> DataProvider<R>): FlatMapProcessor<T, R>
    
    /**
    * "flat map" combinator that simply applies `f` to every item of original data strategy.
    * However shrinking is done by returned strategy rather than original input.
    */
    @!APILevel[since: "22"]
    public func flatMapStrategy<R>(f: (T) -> DataStrategy<R>): FlatMapStrategyProcessor<T, R>
    
    /**
    * Cartesian product combinator. Creates data strategy that contains all possible permutations of elements in original strategies.
    * Shrinking happens on each element of the original strategy independently and uniformly.
    */
    @!APILevel[since: "22"]
    public func product<R>(p: DataStrategyProcessor<R>): CartesianProductProcessor<T, R>
    
    /**
    * Convenience adapter for `DataStrategyProcessor.product` when second strategy only does side effects.
    * Intended to be used from code generated by `@Test` macro to help with type inference.
    */
    @!APILevel[since: "22"]
    public func productWithUnit<P>(p: P): MapProcessor<(T, Unit), T> where P <: DataStrategyProcessor<Unit>
}


extend JsonValue <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}

extend String <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}

extend Int64 <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}

extend<T> Option<T> <: IntoJson where T <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}

extend<T> Array<T> <: IntoJson where T <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}

extend<T> ArrayList<T> <: IntoJson where T <: IntoJson {
    @!APILevel[since: "22"]
    public func json(): JsonValue
}


/**
* None of these configuration parameters are intended as public API for now.
*/

extend CheckResult <: PrettyPrintable {
    @!APILevel[since: "22"]
    public func pprintWithFailedPrefix(pp: PrettyPrinter): PrettyPrinter
    
    @!APILevel[since: "22"]
    public func pprint(pp: PrettyPrinter): PrettyPrinter
}


@!APILevel[since: "22"]
public open class UnittestException <: Exception {
}

@!APILevel[since: "22"]
public class UnittestCliOptionsFormatException <: UnittestException {
}




