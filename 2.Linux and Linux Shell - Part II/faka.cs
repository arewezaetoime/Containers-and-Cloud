using namespace System.Runtime.CompilerServices;

[assembly: InternalsVisibleTo("TestLibrary")]

public class MyClass {
    internal void InternalMethod() {
        Console.WriteLine("Internal Method Called");
    }
}

public class Program {
    internal void InternalMethod() {
        Console.WriteLine("Internal Method Called from Program");
    }
    
    public static void Main() {
        MyClass myClass = new MyClass();
        myClass.InternalMethod();
        
        Program program = new Program();
        program.InternalMethod();
    }
}

public class TestClass {
    [Test]
    public void TestInternalMethod() {
        Program program = new Program();
        program.InternalMethod();
    }
}

static void Main() {
    TestClass testClass = new TestClass();
    testClass.TestInternalMethod();
}