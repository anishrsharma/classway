from django.shortcuts import render

# Create your views here.


def app_home(request):
    if 'logged_in_user' in request.session:
        return render(request, 'temp_app_classway/app_home.html')

    return render(request, 'temp_website/home.html')


def app_fresher(request):
    return render(request, 'temp_app_classway/app_fresher.html')


def app_create_class(request):
    return render(request, 'temp_app_classway/app_create_class.html')


def app_join_class(request):
    return render(request, 'temp_app_classway/app_join_class.html')


def app_available_class(request):
    return render(request, 'temp_app_classway/app_available_class.html')


def app_class_details(request):
    return render(request, 'temp_app_classway/app_class_details.html')


def app_add_question(request):
    return render(request, 'temp_app_classway/app_add_question.html')


def app_class_performance(request):
    return render(request, 'temp_app_classway/app_class_performance.html')


def app_add_answer(request):
    return render(request, 'temp_app_classway/app_add_answer.html')


def app_view_question(request):
    return render(request, 'temp_app_classway/app_view_question.html')
