# 기반 이미지 설정
FROM nginx:latest

# nginx의 기본 index.html 파일 제거
RUN rm /usr/share/nginx/html/index.html

# 호스트 머신의 index.html 파일을 컨테이너로 복사
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/kaj-puppy.jpeg

# 포트 80 오픈
EXPOSE 80

# Nginx 서버 실행
CMD ["nginx", "-g", "daemon off;"]
