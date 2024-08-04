# 기본 locale 설정
FROM postgres:16
# utf-8
RUN localedef -i ko_KR -c -f UTF-8 -A /usr/share/locale/locale.alias ko_KR.UTF-8
ENV LANG ko_KR.utf8

# euc-kr
# RUN localedef -i ko_KR -c -f EUC-KR -A /usr/share/locale/locale.alias ko_KR.EUC-KR
# ENV LANG ko_KR.euckr