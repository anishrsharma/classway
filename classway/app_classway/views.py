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

    # -------------------------

    # test = Enroll.objects.select_related(Class)
    # for i in test:
    #     print(i)

    # -------------------------

    if obj_user_classes:
        return render(request, 'temp_app_classway/app_available_class.html', {
            'created_class': obj_user_classes,
            'enroll_count': obj_user_enrolls_count
        })

    # elif obj_user_classes ==0 and

    else:
        return redirect('/app_classway/app_no_class/')


##############################################################################



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

def app_account_page(request):
    return render(request, 'temp_app_classway/app_account_page.html')


def app_status_page(request):
    return render(request, 'temp_app_classway/app_status_page.html')


def app_todo_page(request):
    return render(request, 'temp_app_classway/app_todo_page.html')


######################################################################################
######################################################################################
######################################################################################
######################################################################################


def generate_unique_code():
    code = ''.join(random.choices(string.ascii_uppercase + string.digits, k=7))
    return str(code)


######################################################################################
######################################################################################
######################################################################################
######################################################################################


######################################################################################
######################################################################################
######################################################################################
######################################################################################


######################################################################################
######################################################################################
######################################################################################
######################################################################################



# ***
def app_available_class_enrolled(request):

    user_email = request.session['logged_in_user']

    



    return render(request, 'temp_app_classway/app_available_class_enrolled.html', {
        # 'created_class': obj_user_classes,
        # 'enroll_count': obj_user_enrolls_count
    })












# *** done ***
def app_join_class(request):

    if request.method == 'POST':
        print('post')

        form_obj = ModelFormJoinClass(request.POST)

        if form_obj.is_valid():
            print('form valid')

            user_code = form_obj.cleaned_data['class_code']
            print('user_code:', user_code)


            # getting current user id:
            obj_current_user_id = User.objects.filter(
                email=request.session['logged_in_user'])

            current_user_id = obj_current_user_id[0].id
            print('current_user_id:', current_user_id)

            get_code = Class.objects.filter(class_code=user_code)

            if get_code:
                class_id = get_code[0].id
                class_admin = get_code[0].class_admin

                # print("type class_admin",type(class_admin))
                # print("type current_user_id",type(current_user_id))

                # getting class code
                obj_get_class_id = Class.objects.filter(class_code=user_code)
                class_id = obj_get_class_id[0].id

                print("class id:", class_id)

                # check_class_id_enroll = Enroll.objects.filter(
                # class_id=class_id)

                # check_user_id_enroll = Enroll.objects.filter(
                # user_id=current_user_id)

                if Enroll.objects.filter(user_id=current_user_id, class_id=class_id).exists():
                    print('user exists in this class')
                    msg = 'already enrolled...'
                    return render(request, 'temp_app_classway/app_join_class.html', {
                        'join_class_form': form_obj,
                        'msg':msg
                    })
                else:
                    print('user does not exists in this class')

                    print('current_user_id:', current_user_id)
                    print('class_admin:', class_admin)

                    # here current_user_id was integer therefore needed to convert inti string
                    if class_admin == str(current_user_id):
                        print('admin cannot enroll')
                        msg = 'admin cannot enroll...'
                        return render(request, 'temp_app_classway/app_join_class.html', {
                            'join_class_form': form_obj,
                            'msg': msg
                        })

                    else:
                        print('success')
                        enroll_user = Enroll(
                            class_id=get_code[0], user_id=obj_current_user_id[0])  # FK mei obj store hoga
                        enroll_user.save()

                        print('data inserted...')
                        msg = 'class enrolled...'
                        return render(request, 'temp_app_classway/app_join_class.html', {
                            'join_class_form': form_obj,
                            'msg': msg
                        })

            else:
                print('code not found')
                msg = 'invalid code...'
                return render(request, 'temp_app_classway/app_join_class.html', {
                    'join_class_form': form_obj,
                    'msg': msg
                })
    else:
        print('get')
        form_obj = ModelFormJoinClass()

    return render(request, 'temp_app_classway/app_join_class.html', {
        'join_class_form': form_obj
    })
