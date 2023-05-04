set gacutil="%ProgramFiles(x86)%\Microsoft SDKs\Windows\v8.1A\bin\NETFX 4.5.1 Tools\gacutil.exe"
set topdir=%~dp0packages
%gacutil% -u Microsoft.Bcl.AsyncInterfaces
%gacutil% -i "%topdir%\Microsoft.Bcl.AsyncInterfaces.7.0.0\lib\net462\Microsoft.Bcl.AsyncInterfaces.dll"
%gacutil% -u Microsoft.Extensions.DependencyInjection.Abstractions
%gacutil% -i "%topdir%\Microsoft.Extensions.DependencyInjection.Abstractions.7.0.0\lib\net462\Microsoft.Extensions.DependencyInjection.Abstractions.dll"
%gacutil% -u Microsoft.Extensions.DependencyInjection
%gacutil% -i "%topdir%\Microsoft.Extensions.DependencyInjection.7.0.0\lib\net462\Microsoft.Extensions.DependencyInjection.dll"
%gacutil% -u Microsoft.Extensions.Http
%gacutil% -i "%topdir%\Microsoft.Extensions.Http.7.0.0\lib\net462\Microsoft.Extensions.Http.dll"
%gacutil% -u Microsoft.Extensions.Logging
%gacutil% -i "%topdir%\Microsoft.Extensions.Logging.7.0.0\lib\net462\Microsoft.Extensions.Logging.dll"
%gacutil% -u Microsoft.Extensions.Logging.Abstractions
%gacutil% -i "%topdir%\Microsoft.Extensions.Logging.Abstractions.7.0.0\lib\net462\Microsoft.Extensions.Logging.Abstractions.dll"
%gacutil% -u Microsoft.Extensions.Options
%gacutil% -i "%topdir%\Microsoft.Extensions.Options.7.0.0\lib\net462\Microsoft.Extensions.Options.dll"
%gacutil% -u Microsoft.Extensions.Primitives
%gacutil% -i "%topdir%\Microsoft.Extensions.Primitives.7.0.0\lib\net462\Microsoft.Extensions.Primitives.dll"
%gacutil% -u System.Buffers
%gacutil% -i "%topdir%\System.Buffers.4.5.1\lib\net461\System.Buffers.dll"
%gacutil% -u System.Diagnostics.DiagnosticSource
%gacutil% -i "%topdir%\System.Diagnostics.DiagnosticSource.7.0.0\lib\net462\System.Diagnostics.DiagnosticSource.dll"
%gacutil% -u System.Memory
%gacutil% -i "%topdir%\System.Memory.4.5.5\lib\net461\System.Memory.dll"
%gacutil% -u System.Runtime.CompilerServices.Unsafe
%gacutil% -i "%topdir%\System.Runtime.CompilerServices.Unsafe.6.0.0\lib\net461\System.Runtime.CompilerServices.Unsafe.dll"
%gacutil% -u System.Threading.Tasks.Extensions
%gacutil% -i "%topdir%\System.Threading.Tasks.Extensions.4.5.4\lib\net461\System.Threading.Tasks.Extensions.dll"
%gacutil% -u System.ValueTuple
%gacutil% -i "%topdir%\System.ValueTuple.4.5.0\lib\net47\System.ValueTuple.dll"
pause