using System.Runtime.InteropServices;

namespace MyLibrary
{
    [ComVisible(true)]
    [Guid("4C2DDA7F-9DC9-46FD-A107-832254B2EEBE")]
    public interface IExampleCom
    {
        string GetMessage();
        int GetSum(int a, int b);
    }

    [ComVisible(true)]
    [Guid("36B142F2-97DC-4594-96A4-8160EEB7184C")]
    public class ExampleCom : IExampleCom
    {
        public string GetMessage() => "Hello from .NET!";
        public int GetSum(int a, int b) => a + b;
    }
}

