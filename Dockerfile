# 기반 이미지 설정
FROM nginx:nginx

# nginx의 기본 index.html 파일 제거 및 여러 파일 복사
RUN rm /usr/share/nginx/html/index.html
COPY index.html kaj-puppy.jpeg /usr/share/nginx/html/

# 포트 80 오픈
EXPOSE 80

# Nginx 서버 실행
CMD ["nginx", "-g", "daemon off;"]
