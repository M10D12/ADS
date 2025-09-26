from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.http import JsonResponse

def api_status(request):
    """Status simples da API"""
    return JsonResponse({
        "status": "API Django está funcionando!",
        "version": "1.0.0",
        "endpoints": [
            "/api/hello/ - Endpoint de teste",
            "/admin/ - Painel administrativo"
        ]
    })

class HelloWorldView(APIView):
    def get(self, request):
        return Response(
            {"message": "Hello World from Django API!"}, 
            status=status.HTTP_200_OK
        )
