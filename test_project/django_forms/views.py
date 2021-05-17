from django.shortcuts import render
from django.http import HttpResponse
from .forms import Employee


# Create your views here.

def employee_view(request):
    if request.method == 'POST':
        # obj will contain some data # bounded form...
        obj = Employee(request.POST)

        if obj.is_valid():  # if data is valid then all data will be saved in cleaned_data[], else it won't...
            print(obj.cleaned_data)
            # cleaned_data will store value as key:value...

            print(obj.cleaned_data['name'])
            print(obj.cleaned_data['age'])
            print(obj.cleaned_data['department'])

            obj = Employee()  # will return blank form after data submission...
            # but... this is not a good practice...
            # data can be submitted multiple times...
        else:
            return HttpResponse('invalid data.')
    else:
        obj = Employee()  # will render blank form # unbounded form...

    return render(request, 'django_forms.html', {
        'emp_form_obj': obj
    })
