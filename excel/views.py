from django.shortcuts import render, redirect
from django.http import HttpResponseBadRequest
from django import forms
import django_excel as excel
from learning.models import QuestionAnswer

data = [[1, 2, 3], [4, 5, 6]]

class UploadFileForm(forms.Form):
    file = forms.FileField()

def download(request, file_type):
    sheet = excel.pe.Sheet(data)
    return excel.make_response(sheet, file_type)

def download_as_attachment(request, file_type, file_name):
    return excel.make_response_from_array(data, file_type, file_name=file_name)

def import_data(request):
    if request.method == "POST":
        form = UploadFileForm(request.POST, request.FILES)


        if form.is_valid():
            request.FILES["file"].save_book_to_database(
                models=[QuestionAnswer],
                initializers=[None],
                mapdicts=[
                    #["question_text", "pub_date", "slug"],
                    ["question", "answer", "level", "questionKeyword"],
                    
                ],
            )
            return redirect("home")
        else:
            return HttpResponseBadRequest()
    else:
        form = UploadFileForm()
    return render(
        request,
        "upload_form.html",
        {
            "form": form,
            "title": "Import excel data into database example",
            "header": "Please upload sample-data.xls:",
        },
    )