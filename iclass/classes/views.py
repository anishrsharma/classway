from django.shortcuts import render


def test(request):
    return render(request, 'test.html')


def user_class_fresher(request):
    return render(request, 'user_class_fresher.html')


def user_class_joinclass(request):
    return render(request, 'user_class_joinclass.html')


def user_class_createclass(request):
    return render(request, 'user_class_createclass.html')


def user_class_availableclass(request):
    return render(request, 'user_class_availableclass.html')


def user_class_classdetails(request):
    return render(request, 'user_class_classdetails.html')


def user_class_addquestion(request):
    return render(request, 'user_class_addquestion.html')


def user_class_classperformance(request):
    return render(request, 'user_class_classperformance.html')


def user_class_takeanswer(request):
    return render(request, 'user_class_takeanswer.html')
