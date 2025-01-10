from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def home(request):
    path = request.path
    # return HttpResponse("<ht>This is the home page.</h1>")
    return HttpResponse(path, content_type='text/html', charset='utf-8')

def index(request):
    return HttpResponse("Index")

def request_headers_keys(request):
    text = ""
    for k in request.headers.keys():
        text += f"{k}\n"
    return HttpResponse(text, content_type='text', charset='utf-8')
    # return HttpResponse(request.keys(), content_type='text/html', charset='utf-8')

def request_headers_values(request):
    text = ""
    for v in request.headers.values():
        text += f"{v}\n"
    return HttpResponse(text, content_type='text', charset='utf-8')
    # return HttpResponse(request.values(), content_type='text/html', charset='utf-8')

def request_headers_dict(request):
    """ http://127.0.0.1:8000/request_headers_dict/ """
    text = ""
    for k,v in request.headers.items():
        text += f"{k} : {v}\n"
    return HttpResponse(text, content_type='text', charset='utf-8')

def req_parts(request):
    text = ""
    path = request.path
    scheme = request.scheme
    method = request.method
    address = request.META['REMOTE_ADDR']
    user_agent = request.META['HTTP_USER_AGENT']
    path_info = request.path_info

    text += f'{path = }\n'
    text += f'{scheme = }\n'
    text += f'{method = }\n'
    text += f'{address = }\n'
    text += f'{user_agent = }\n'
    text += f'{path_info = }\n'

    response = HttpResponse("This works!")

    return HttpResponse(text, content_type='text', charset='utf-8')

def req_msg(request):
    path = request.path
    scheme = request.scheme
    method = request.method
    address = request.META['REMOTE_ADDR']
    user_agent = request.META['HTTP_USER_AGENT']
    path_info = request.path_info

    # msg = f"""
    # <br>{path = }
    # <br>{scheme = }
    # <br>{method = }
    # <br>{address = }
    # <br>{user_agent = }
    # <br>{path_info = }
    # """
    # return HttpResponse(msg, content_type='text', charset='utf-8')

    msg = f"""<br>
        <br>Path: {path}
        <br>Scheme: {scheme}
        <br>Method: {method}
        <br>Address: {address}
        <br>User agent: {user_agent}
        <br>Path info: {path_info}
    """
    return HttpResponse(msg, content_type='text/html', charset='utf-8')


def req_msg_http(request):
    path = request.path
    scheme = request.scheme
    method = request.method
    address = request.META['REMOTE_ADDR']
    user_agent = request.META['HTTP_USER_AGENT']
    path_info = request.path_info

    # msg = f"""
    # <br>{path = }
    # <br>{scheme = }
    # <br>{method = }
    # <br>{address = }
    # <br>{user_agent = }
    # <br>{path_info = }
    # """
    # return HttpResponse(msg, content_type='text', charset='utf-8')

    # response object - good for forms, databases, etc.
    response = HttpResponse()
    response.headers['Age'] = 20
    msg = f"""<br>
        <br>Path: {path}
        <br>Scheme: {scheme}
        <br>Method: {method}
        <br>Address: {address}
        <br>User agent: {user_agent}
        <br>Path info: {path_info}<br>
        <br>Response header: {response.headers}
    """
    return HttpResponse(msg, content_type='text/html', charset='utf-8')

def qryview(request):
    name = request.GET['name']
    id =   request.GET['id']
    return HttpResponse(f"Name: {name} UserID: {id}")
    # either formatting works
    # return HttpResponse("Name: {} UserID: {}".format(name, id))

def showform(request):
    """
    mkdir simpleapp/templates
    add form.html inside that
    http://localhost:8000/simpleapp/showform/
    """
    return render(request, "form.html")

def getform(request):
    """
    http://localhost:8000/simpleapp/showform/
    fill it out, press submit
    ...
    displays on:
    http://localhost:8000/simpleapp/getform/
    """

    if request.method == "POST":
        id = request.POST['id']
        name = request.POST['name']
    return HttpResponse("Name:{} UserID: {}".format(name, id))


def menuitems(request, dish):
    """ http://127.0.0.1:8000/dishes/falafel """
    items = {
        'pasta': 'Pasta is a type of noodle ...',
        'falafel': 'Falafel are deep fried patties ...',
        'cheesecake': 'Cheesecake is a type of dessert ...'
    }
    description = items[dish]
    # print(f'{description = }')
    return HttpResponse(f"<h2> {dish} </h2>" + description)


def drinks(request, name):
    query = name
    return HttpResponse("<h1> %s </h1>" %query)