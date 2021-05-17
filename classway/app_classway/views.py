from django.shortcuts import render, redirect

from .models import Class, Question, Answer, Enroll
from account.models import User

from .forms import ModelFormEditClass, ModelFormJoinClass, ModelFormNewClass, ModelFormAllotMarks, ModelFormAddQuestion, ModelFormAddAnswer


import string
import random
# Create your views here.


def app_home(request):
    if 'logged_in_user' in request.session:
        return render(request, 'temp_app_classway/app_home.html')

    return render(request, 'temp_website/home.html')


def app_fresher(request):
    return render(request, 'temp_app_classway/app_fresher.html')


def app_create_class(request):
    if request.method == 'POST':

        form_obj = ModelFormNewClass(request.POST)

        if form_obj.is_valid():
            class_name = form_obj.cleaned_data['class_name']
            class_subject = form_obj.cleaned_data['class_subject']
            print(class_name)
            print(class_subject)

            current_user_email = request.session['logged_in_user']
            print(current_user_email)

            obj_user = User.objects.filter(email=current_user_email)
            present_codes = Class.objects.values_list('class_code', flat=True)
            count_present_code = Class.objects.all().count()

            print("total count:", count_present_code)

            for i in obj_user:
                user_id = i.id

            # creating unique class code
            code = generate_unique_code()

            for i in range(count_present_code):
                if Class.objects.filter(class_code=code):
                    i = 0
                    code = generate_unique_code()

            create_class = Class(class_name=class_name,
                                 class_subject=class_subject, class_code=code, class_admin=user_id)
            create_class.save()

            print('new class created...')
            return redirect('/app_classway/app_available_class/')
    else:
        print('get')
        form_obj = ModelFormNewClass()

    return render(request, 'temp_app_classway/app_create_class.html', {
        'create_class_form': form_obj
    })


##############################################################################


def app_join_class(request):
    return render(request, 'temp_app_classway/app_join_class.html')


##############################################################################


def app_available_class(request):
    user_email = request.session['logged_in_user']

    # fetching user id with the help of user email
    temp = User.objects.filter(email=user_email)
    for i in temp:
        user_id = i.id

    # fetching classes created by this user_id
    obj_user_classes = Class.objects.filter(class_admin=user_id)

    # fetching total user enrolled each classes
    obj_user_enrolls_count = Enroll.objects.all().count()


    # temp2 = Enroll.objects.filter(user_id=user_id)
    # obj_user_enrolled =     





    if obj_user_classes:
        return render(request, 'temp_app_classway/app_available_class.html', {
            'created_class': obj_user_classes,
            'enroll_count': obj_user_enrolls_count
        })
    
    # elif obj_user_classes ==0 and

    else:
        return redirect('/app_classway/app_no_class/')


##############################################################################


def app_class_details(request):
    return render(request, 'temp_app_classway/app_class_details.html')


def app_add_question(request):
    return render(request, 'temp_app_classway/app_add_question.html')


def app_no_class(request):
    return render(request, 'temp_app_classway/app_no_class.html')



def app_class_performance(request):
    return render(request, 'temp_app_classway/app_class_performance.html')


def app_add_answer(request):
    return render(request, 'temp_app_classway/app_add_answer.html')


def app_view_question(request):
    return render(request, 'temp_app_classway/app_view_question.html')


def app_view_question_student(request):
    return render(request, 'temp_app_classway/app_view_question_student.html')


######################################################################################
######################################################################################
######################################################################################
######################################################################################


def generate_unique_code():
    code = ''.join(random.choices(string.ascii_uppercase + string.digits, k=7))
    return str(code)
