from django.shortcuts import render
from django.http import HttpResponse
from .models import Student, Class
from django.db.models import Count


# Create your views here.


def fkey_view(request):
    class1_objects = Class.objects.filter(class_id=1)

    for i in class1_objects:
        print("class:", i.name)
        break
    print("students:")
    for i in class1_objects:
        print(i.student_id.name)  # foreign key access

    #
    print('--------------------------------')
    class_all_objects = Class.objects.all()
    print("total classes:")
    for i in class_all_objects:

        print(i.name, " | ", i.student_id.name)

    print('--------------------------------')


    # ***
    # to exclude duplicate names of class (^_^)
    test = Class.objects.values('name').annotate(Count('id')).order_by().filter(id__count__gt=1)
    print('total subjects:')
    for i in test:
        print(i.get('name'))




    return render(request, 'fkey_form.html')

