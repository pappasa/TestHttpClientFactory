Imports System.EnterpriseServices
Imports System.Net
Imports System.Net.Http
Imports Microsoft.Extensions.DependencyInjection

Public Class APIAccess
    Inherits ServicedComponent

    Private Shared mHttpClientFactory As IHttpClientFactory
    Shared Sub New()
        Dim serviceCollection = New ServiceCollection()
        serviceCollection.AddHttpClient("client1")
        Dim serviceProvider = serviceCollection.BuildServiceProvider()
        mHttpClientFactory = serviceProvider.GetService(Of IHttpClientFactory)
    End Sub

    Public Function HttpClientGetAsync(uri As String, ByRef httpStatus As HttpStatusCode) As String
        Dim client = mHttpClientFactory.CreateClient("client1")
        Dim httpResponse = client.GetAsync(uri).Result
        Dim result = httpResponse.Content.ReadAsStringAsync.Result
        httpStatus = httpResponse.StatusCode
        Return result
    End Function
End Class
