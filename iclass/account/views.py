from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.models import User, auth


# Create your views here.

def signup(request):
    if request.method == 'POST':  # if template request to send data i.e uses POST method
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']

        # empty field validation
        if first_name != '' or last_name != '' or email != '' or password1 != '' or password2 != '':

            # confirm password validation
            if password1 == password2:
                # check if email already exists
                if User.objects.filter(email=email).exists():
                    messages.info(request, "email already exists")
                    return redirect('signup')
                else:
                    user = User.objects.create_user(
                        first_name=first_name, last_name=last_name, email=email, username=email, password=password1)  # creating user in django admin auth
                    user.save()  # saving user
                    messages.info(request, "account created, please login")
                    return redirect('login')

            else:
                messages.info(request, "password didn't matched")
                return redirect('signup')
        else:
            messages.info(request, "please fill all inputs.")
            return redirect('signup')

    else:  # if template request to get data i.e uses GET method
        return render(request, 'signup.html')


def login(request):
    try:
        if request.method == 'POST':
            email = request.POST['email']
            password = request.POST['password']

            if email != '' or password != '':
                # using django admin auth system to authenticate
                user = auth.authenticate(username=email, password=password)

                if user != None:  # if user exists
                    auth.login(request, user)  # user loggedin now
                    return redirect('/user_home')

                else:
                    messages.info(request, "invalid credentials")
                    return redirect('login')
            else:
                messages.info(request, "please fill all inputs.")
                return redirect('login')

        else:
            return render(request, 'login.html')

    except:
        return render(request, 'test.html')


def logout(request):
    pass
