import requests
from bs4 import BeautifulSoup

# URL → 제목, 기자, 날짜, 본문 수집
def get_news_info(url:str):
    result = requests.get(url)
    doc = BeautifulSoup(result.text, "html.parser")
    title = doc.select("h3.tit_view")[0].get_text()
    contents = doc.select("section > p") 
    content = ""
    
    for text in contents:
        content += text.get_text()
                
        # 기자o : "span.txt_info" → [0]기자, [1]날짜
        # 기자x : "span.txt_info" → [0]기자  해결해야할 문제!
        writer_list = doc.select("span.text_info")
        
        if len(writer_list) < 2:
                writer = ""
        else:
                writer=writer_list[0].get_text()
                    
    writer = doc.select("span.text_info")[0].get_text()
    reg_date = doc.select("span.num_date")[0].get_text()
    list_date = reg_date.split(".")
    list_date = list(map(lambda x: x.strip(), list_date))
    reg_date = list_date[0] + list_date[1] + list_date[2]
    print(f"뉴스 제목: {title}")
    print(f"뉴스 기자: {writer}")
    print(f"뉴스 날짜: {reg_date}") 
    print(f"뉴스 본문: {content}")