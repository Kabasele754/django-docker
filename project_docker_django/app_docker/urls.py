from django.urls import path
from app_docker.views import homeView

urlpatterns = [
    path('', homeView, name="home")
]
