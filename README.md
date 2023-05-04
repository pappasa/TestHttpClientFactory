# TestHttpClientFactory

Tests IHttpClientFactory in COM+.  

The solution contains three projects:
1. WebApplication1  
   Default .NET CORE 3.1 Web Api template (with the weather forecast)
2. ApiAccess  
   .NET 4.7 Class library, containing the COM+ class APIAccess which creates an IHttpClientFactory and provides
   the method HttpClientGetAsync, to make GET requests to a URI. In the post build events, the assembly is
   registered in the GAC with gacutil and in COM+ (Component Services) with regsvcs. In the Nuget package manager,
   the Nuget package Microsoft.Extensions.Http version 7.0.0 was installed, which installed the dlls found in the
   solution's packages folder. The dlls are registered in the GAC with the solution's Register_GAC.bat.
3. TestApiAccess  
   .NET 4.7 Console application calling ApiAccess.HttpClientGetAsync. The following exception is thrown:
   
   Could not load file or assembly 'System.Runtime.CompilerServices.Unsafe, Version=4.0.4.1, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a' or one of its dependencies. The system cannot find the file specified.
   
Apparently COM+ (i.e. the process dllhost) cannot find the System.Runtime.CompilerServices.Unsafe.dll. 

1. How can I get COM+ to work with IHttpClientFactory?
2. Is it safe to install the above dlls in the GAC on a production server with Windows Server 2012?
3. The name "System.Runtime.CompilerServices.Unsafe.dll" does not imply safeness. Is it really safe for a production environment?
4. Is it safe to use HttpClientFactory in a COM+ class?

To reproduce:
1. Rebuild solution.
2. Run as administrator Register_GAC.bat.
3. Start WebApplication1.
4. Start TestApiAccess. It should throw the above mentioned exception.
