from django.urls import path
from . import views

urlpatterns = [
    path('', views.api_status, name='api_status'),
    path('hello/', views.HelloWorldView.as_view(), name='hello_world'),
]