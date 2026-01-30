#get info
text = input("yout file:")
#clean
def clean_text(text):
    cleaned = text.strip().lower()
    return cleaned
cleartext = clean_text(text)
#check for .
if '.' in cleartext:
    extension = cleartext.rsplit('.', 1)[-1]
#extension 
    if extension in ["gif", "jpeg", "png"]:
        print(f"image/{extension}")
    elif extension in ["zip", "pdf"]:
        print(f"application/{extension}")
    elif extension in ["txt"]:
        print("text/plain")
    elif extension in ["jpg"]:
        print("image/jpeg")    
    else:
        print("application/octet-stream")
else:
    print("application/octet-stream")
    
