Imports System.Net

Module Module1

    Sub Main()
        Dim httpStatus As HttpStatusCode
        Dim api = New ApiAccess.APIAccess
        Dim result = api.HttpClientGetAsync("https://localhost:44322/weatherforecast", httpStatus)
        Console.WriteLine(httpStatus.ToString)
        Console.ReadKey()
    End Sub

End Module
