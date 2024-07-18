using namespace System.Runtime.CompilerServices;

[assembly: InternalsVisibleTo("TestLibrary")]

public class MyClass {
    internal void InternalMethod() {
        Console.WriteLine("Internal Method Called");
    }
}